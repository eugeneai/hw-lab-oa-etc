#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN 5

#define BAUD 9600

#include <util/setbaud.h>

#include <stdio.h>
#include <stdlib.h>

#include <inttypes.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <string.h>

char mystr[]="Atmega8 UART ready!\n";
char rc;

/* void lampOFF() */
/* { */
/*     PORTB.0=0; */
/* } */

/* void lampON() */
/* { */
/*     PORTB.0=1; */
/* } */


int uart_putchar(char c, struct __file * unused) {
    loop_until_bit_is_set(UCSRA, UDRE); /* Wait until data register empty. */
    UDR = c;
    // loop_until_bit_is_set(UCSRA, TXC); /* Wait until transmission ready. */
    return 0;
}

int uart_getchar(struct __file * unused) {
    loop_until_bit_is_set(UCSRA, RXC); /* Wait until data exists. */
    return UDR;
}

int prints(char s[]) {
  int i=0;
  while (s[i]) {
    uart_putchar(s[i++], NULL);
  }
  return 0;
}

FILE uart_output = FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);
FILE uart_input = FDEV_SETUP_STREAM(NULL, uart_getchar, _FDEV_SETUP_READ);
//FILE uart_io FDEV_SETUP_STREAM(uart_putchar, uart_getchar, _FDEV_SETUP_RW);


void uart_init()
{
    UCSRC = _BV(UCSZ1) | _BV(UCSZ0); /* 8-bit data */
    UCSRB = _BV(RXEN) | _BV(TXEN);   /* Enable RX and TX */
    UCSRA &= ~(_BV(U2X));
    UBRRH = UBRRH_VALUE;
    UBRRL = UBRRL_VALUE;
}

unsigned long int pulses = 0;
unsigned int time=0, ticks = 0;
unsigned int ovfls = 0;

// unsigned long period=0; // TODO: store it in PROGMEM

#define PERIOD 61

void timer_tick() {
  // run each period timer ticks
  ticks++;
}

ISR(TIMER1_OVF_vect) { // Time1 overflow
  // PORTB ^= 1<<7;
  ovfls++;
  TIFR |= (1<<TOV0); // Clear overflow flag;
}

int int_cnt = 0;

unsigned int part;

ISR(TIMER0_OVF_vect) { // Time1 overflow
  // unsigned char sreg;

  /* /\* Сохранение флага глобального прерывания *\/ */
  // sreg = SREG;
  /* /\* Запрет прерываний *\/ */
  // cli();
  part = TCNT1;
  /* TCNT5 = 0; */
  /* /\* Восстановление флага глобального прерывания *\/ */
  /* SREG = sreg; */

  /* pulses += part; */

  TIFR |= (1<<TOV0); // clear overflow flag

  time++;
  if (PERIOD!=0) {
    if (time>=PERIOD) {
      timer_tick();
      time = 0;
    }
  }

  /* if (int_cnt++ >= 239) { */
  /*   printf("Count: %lu\n", pulses); */
  /*   int_cnt = 0; */
  /* } */
}

void timer_init() {
  TCCR1B = (1<<CS12)|(1<<CS11);
  TIMSK |= (1<<TOIE1); // Enable Overflow interrupt for Counter5.

  TCCR0 |= (1<<CS02)|(1<<CS00);
  //0B
  TIMSK |= (1<<TOIE0); // Enable Overflow interrupt for Counter0 (8bit).
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

  // DDRB |= 1<<7;
  // PORTB ^= 1<<7;

  pulses = 0;

  pulses = ovfls*65536 + part;
  long int pp = pulses;

  printf("Starting:\n");
  for (;;)  {
    /* curr = PINL & 1<<2; */
    /* if (prev!=curr) { */
    /*   pulses++; */
    /*   c++; */
    /*   prev=curr; */
    /* } */
    //if (c>=STEPS) {
    pulses = ovfls*65536 + part;
    printf("Count: %lu (+%lu / sec) time: %u ", pulses, (pulses-pp) >> 2,ticks);
      /* printf("SREG: %x ", SREG); */
      /* printf("TCCR0A: %x ", TCCR0A); */
      /* printf("TIMSK0: %x ", TIMSK0); */
      /* printf("TCNT0: %x ", TCNT0); */
      /* printf("TIFR0: %x ", TIFR0); */

      printf("\n");
      pp=pulses;
      // PORTB ^= 1<<7;
      //}
    _delay_ms 	(4000);
    // sleep_mode();
  }
  return 0;
}
