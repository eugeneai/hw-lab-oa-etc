// #define F_CPU 16000000UL

#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN 5

#define BAUD 9600

#include <util/setbaud.h>

#include <stdio.h>

void uart_init(void) {
    UBRR0H = UBRRH_VALUE;
    UBRR0L = UBRRL_VALUE;

#if USE_2X
    UCSR0A |= _BV(U2X0);
#else
    UCSR0A &= ~(_BV(U2X0));
#endif

    UCSR0C = _BV(UCSZ01) | _BV(UCSZ00); /* 8-bit data */
    UCSR0B = _BV(RXEN0) | _BV(TXEN0);   /* Enable RX and TX */
}


int uart_putchar(char c, struct __file * unused) {
    loop_until_bit_is_set(UCSR0A, UDRE0); /* Wait until data register empty. */
    UDR0 = c;
    loop_until_bit_is_set(UCSR0A, TXC0); /* Wait until transmission ready. */
    return 0;
}

int uart_getchar(struct __file * unused) {
    loop_until_bit_is_set(UCSR0A, RXC0); /* Wait until data exists. */
    return UDR0;
}

FILE uart_output = FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);
FILE uart_input = FDEV_SETUP_STREAM(NULL, uart_getchar, _FDEV_SETUP_READ);
//FILE uart_io FDEV_SETUP_STREAM(uart_putchar, uart_getchar, _FDEV_SETUP_RW);


int main() {
  uart_init();
  stdout = &uart_output;
  stdin  = &uart_input;
  DDRB |= 1 << LED_PIN;
  while(1) {
    printf("Hello world\n");
    PORTB |= 1 << LED_PIN;
    _delay_ms(1000);
    PORTB &= ~(1 << LED_PIN);
    _delay_ms(1000);
  }
  return 0;
}
