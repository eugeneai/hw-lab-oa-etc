#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN 5

#define BAUD 9600

#include <util/setbaud.h>

#include <stdio.h>

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
    loop_until_bit_is_set(UCSRA, TXC); /* Wait until transmission ready. */
    return 0;
}

int uart_getchar(struct __file * unused) {
    loop_until_bit_is_set(UCSRA, RXC); /* Wait until data exists. */
    return UDR;
}

FILE uart_output = FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);
FILE uart_input = FDEV_SETUP_STREAM(NULL, uart_getchar, _FDEV_SETUP_READ);
//FILE uart_io FDEV_SETUP_STREAM(uart_putchar, uart_getchar, _FDEV_SETUP_RW);


void initUART()
{
    UCSRC = _BV(UCSZ1) | _BV(UCSZ0); /* 8-bit data */
    UCSRB = _BV(RXEN) | _BV(TXEN);   /* Enable RX and TX */
    UCSRA &= ~(_BV(U2X));
    UBRRH = UBRRH_VALUE;
    UBRRL = UBRRL_VALUE;
}

int main(void)

{
  //    DDRB.0=1;
  unsigned int i, lng;
    initUART();

    lng=strlen(mystr);

    while(1) {
      for (i=0; i < lng; i++)    {
        // uart_putchar(mystr[i], NULL);
        while ( !( UCSRA & (1<<5)) ) {}
        UDR=mystr[i];
      }
      _delay_ms(1000);

    }

    /* while (1) */
    /* { */
    /*     if ((UCSRA & (1<<7))) */
    /*     { */
    /*         rc=UDR; */
    /*     } */

    /*     switch (rc) */
    /*     { */
    /*         case '1': lampON(); break; */
    /*         case '2': lampOFF(); break; */
    /*     } */

    /* } */
    return 42;
}
