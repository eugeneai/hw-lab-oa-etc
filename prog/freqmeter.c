// #define F_CPU 16000000UL

#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN 5

#define BAUD 9600

#include <util/setbaud.h>

#include <stdio.h>

#include <inttypes.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

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


unsigned long int total = 0;

ISR(TIMER1_OVF_vect) { // Time1 overflow
  total += 65536;
  TIFR1 |= (1<<TOV1); // Clear overflow flag;
}

int int_cnt = 0;

ISR(TIMER3_OVF_vect) { // Time1 overflow
  unsigned int part;
  unsigned char sreg;

  /* Сохранение флага глобального прерывания */
  sreg = SREG;
  /* Запрет прерываний */
  cli();
  /* Read TCNT1 into i */
  part = TCNT1;
  TCNT1 = 0;
  /* Восстановление флага глобального прерывания */
  SREG = sreg;

  total += part;

  if (int_cnt++ >= 239) {
    printf("Count: %lu\n", total);
    int_cnt = 0;
  }
}

void timer_init() {
  TCCR1B = (1<<CS12)|(1<<CS11);
  TIMSK1 |= (1<<TOIE1); // Enable Overflow interrupt for Counter1.

  TCCR3B = (1<<CS12)|(1<<CS10);
  TIMSK3 |= (1<<TOIE1); // Enable Overflow interrupt for Counter3.
};

int main() {
  uart_init();
  timer_init();
  sei();
  stdout = &uart_output;
  stdin  = &uart_input;
  for (;;)  {
    printf("Count:");
    // delay(100);
    sleep_mode();
  }
  return 0;
}
