#include <stdio.h>
#include <stdlib.h>
#include <float.h>
#include <avr/io.h>
#include <avr/iotn85.h> /* don't know why this is required but it is */
#include <util/delay.h>
#include <avr/sleep.h>
#include <avr/power.h>
#include <avr/eeprom.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include "main.h"

/* DEFINES for run time and Soft start*/
#define RUN_TIME 4000 /* time in ms for the motor to run */
#define TIME_DIV 1
#define RUN_TIME_STEPS (RUN_TIME/TIME_DIV)
#define SS_step 10

/* TARGET MOTOR VOLTAGE */
#define MOTOR_VOLTAGE 2600

float EEMEM ref = 1.13016796875;


/*
 * PB0	-	IN	- unused
 * PB1	-	OUT	- PWM Motor
 * PB2	-	OUT	- LED
 * PB3	-	IN	- VREG OUTPUT - Read Analog in
 * PB4	- 	OUT	- VRGE IPUT - Use a digital out to power regulator to use a VRef
 * PB5	-	IN	- RESET pin - Used to wait the chip from sleep (also debug Wire)
 */

static FILE outStream = FDEV_SETUP_STREAM(usart_putc, NULL, _FDEV_SETUP_WRITE);
double VrefCalib = 0;

int main() {

	VrefCalib = eeprom_read_float(&ref);

	/* bind the usart to stdout */
	stdout = &outStream;

	/* initialise chip */
	DDRB = 0b010111; /* 0, 1, 2, 4 are out puts for UART, PWM, LED, VRef respectively */
	PORTB = 0b100000;

	/* this is timing critical. Set prescaler: CLK 1MHz */
//	CLKPR = 0b10000000;
//	CLKPR = 0b00000011;

	printf("\nInstax Driver V2.0 initialised\n");

	/* determine how the chip was turned on */
	/* this is run if the chip is just turned on for the first time */
	if (!(MCUSR & (1 << EXTRF))) {
		goto imout;
	}
	MCUSR = 0;

	uint16_t counterStop = 0; /* this is the timer for the stop in case the stop button never actuates. Times out after 25s. */
	uint8_t currentPWM = 0;
	while ((counterStop < RUN_TIME_STEPS)) {
		uint16_t test2 = readADC();
		double vcc = (VrefCalib / (((double) (test2)) / 1024.00)) * 1000.00;
		uint8_t pwm_out = ((double) (MOTOR_VOLTAGE) / (double) (vcc)) * 255;

		if (currentPWM < pwm_out) {
			currentPWM += SS_step;
			pwm(currentPWM);
		}

		/* just in case we get overshoot */
		if (currentPWM > pwm_out) {
			pwm(currentPWM--);
		}

		/*printf("%d, %d, %d, %d\n", (uint16_t)vcc, pwm_out, currentPWM, counterStop); */

		counterStop++;
		_delay_ms(TIME_DIV);
	}

	/*  go to deep deep sleep */
	imout:
		cli();
		DDRB = 0x0;
		PORTB = 0x00;
		ADCSRA = 0;
		ADCSRB = 0;
		ADCSRA &= ~(1<<ADEN);
		power_adc_disable();
		power_timer0_disable();
		power_timer1_disable();
		power_usi_disable();
		PRR = 0xFF;

		MCUSR = 0x00;
		WDTCR |= (1<<WDCE) | (1<<WDE);
		WDTCR = 0x00;

		set_sleep_mode(SLEEP_MODE_PWR_DOWN);
		sleep_enable();
		sleep_cpu();
		sleep_mode();

}

void pwm(uint8_t val) {
	OCR1C = 255; /*  max value */
	PLLCSR = 0b10000110; // this could be changed to use 32MHz and set use PLL as clock source.
	TCCR1 = 0b11100001;
	OCR1A = val;
}

uint16_t readADC() {

	uint8_t adc_lobyte;
	uint16_t raw_adc;

	ADMUX = (0 << ADLAR) | /*  do not left shift result (for 10-bit values) */
	(0 << REFS2) | /* Sets ref. voltage to Vcc, bit 2 */
	(0 << REFS1) | /* Sets ref. voltage to Vcc, bit 1 */
	(0 << REFS0) | /* Sets ref. voltage to Vcc, bit 0 */
	(1 << MUX3) | /* use ADC2 for input (bg), MUX bit 3 */
	(1 << MUX2) | /* use ADC2 for input (bg), MUX bit 2 */
	(0 << MUX1) | /* use ADC2 for input (bg), MUX bit 1 */
	(0 << MUX0); /* use ADC2 for input (bg), MUX bit 0 */

	ADCSRA = (1 << ADEN) | /* Enable ADC */
	(1 << ADPS2) | /* set prescaler to 16, bit 2 */
	(0 << ADPS1) | /* set prescaler to 16, bit 1 */
	(0 << ADPS0); /* set prescaler to 16, bit 0 */

	ADCSRA |= (1 << ADSC);
	while (ADCSRA & (1 << ADSC))
		;

	adc_lobyte = ADCL;
	raw_adc = ADCH << 8 | adc_lobyte;
	return (raw_adc);

}

uint8_t usart_putc(char val) {

	if (val == '\n')
		usart_putc('\r');

	PORTB |= 0b1; /* start by setting the output pin high, this is the start state */
	_delay_us(1000); /* wait for a bit */
	PORTB = PORTB & 0b111110; /* drop line to start tx */
	_delay_us(833); /* delay for 1200 baud */
	uint8_t i = 0;
	for (i = 0; i < 8; i++) {
		if (val & (0b1 << i)) {
			PORTB |= 0b1; /* start by setting the output pin high, this is the start state */
		} else {
			PORTB = PORTB & 0b111110; /* drop line to start tx */
		}
		_delay_us(833);
	}

	PORTB |= 0b1; /* always finish by restoring pin to its starting state */
	_delay_us(1000);
	return (0);
}
