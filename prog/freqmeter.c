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


unsigned long int total = 0, time=0, ticks = 0;
unsigned int ovfls = 0;

// unsigned long period=0; // TODO: store it in PROGMEM

#define PERIOD 61

void timer_tick() {
  // run each period timer ticks
  ticks++;
}

ISR(TIMER5_OVF_vect) { // Time1 overflow
  PORTB ^= 1<<7;
  ovfls++;
  TIFR5 |= (1<<TOV5); // Clear overflow flag;
}

int int_cnt = 0;

unsigned int part;

ISR(TIMER0_OVF_vect) { // Time1 overflow
  unsigned char sreg;



  /* /\* Сохранение флага глобального прерывания *\/ */
  /* sreg = SREG; */
  /* /\* Запрет прерываний *\/ */
  /* cli(); */
  part = TCNT5;
  /* TCNT5 = 0; */
  /* /\* Восстановление флага глобального прерывания *\/ */
  /* SREG = sreg; */

  /* total += part; */

  TIFR0 |= (1<<TOV0); // clear overflow flag

  time++;
  if (PERIOD!=0) {
    if (time>=PERIOD) {
      timer_tick();
      time = 0;
    }
  }

  /* if (int_cnt++ >= 239) { */
  /*   printf("Count: %lu\n", total); */
  /*   int_cnt = 0; */
  /* } */
}

void timer_init() {
  TCCR5B = (1<<CS12)|(1<<CS11);
  TIMSK5 |= (1<<TOIE5); // Enable Overflow interrupt for Counter5.

  TCCR0B |= (1<<CS02)|(1<<CS00);
  //0B
  TIMSK0 |= (1<<TOIE0); // Enable Overflow interrupt for Counter0 (8bit).
  //TIFR0
  sei();
};

#define STEPS 5000

int main() {
  uart_init();
  timer_init();

  stdout = &uart_output;
  stdin  = &uart_input;
  // TEST
  //DDRL  = 0x00;
  //PORTL = 0x00;
  //DDRD |= 1<<6;

  DDRB |= 1<<7;
  // PORTB ^= 1<<7;

  total = 0;

  char prev = 0, curr;
  long int c = 0;
  total = ovfls*65536 + part;
  long int pp = total;

  printf("Starting:\n");
  for (;;)  {
    /* curr = PINL & 1<<2; */
    /* if (prev!=curr) { */
    /*   total++; */
    /*   c++; */
    /*   prev=curr; */
    /* } */
    //if (c>=STEPS) {
    total = ovfls*65536 + part;
    printf("Count: %lu (+%lu / sec) time: %lu ", total, (total-pp) >> 2,ticks);
      /* printf("SREG: %x ", SREG); */
      /* printf("TCCR0A: %x ", TCCR0A); */
      /* printf("TIMSK0: %x ", TIMSK0); */
      /* printf("TCNT0: %x ", TCNT0); */
      /* printf("TIFR0: %x ", TIFR0); */
      printf("TCNT5: %u ", TCNT5);

      printf("\n");
      pp=total;
      c=0;
      // PORTB ^= 1<<7;
      //}
    _delay_ms 	(4000);
    // sleep_mode();
  }
  return 0;
}
