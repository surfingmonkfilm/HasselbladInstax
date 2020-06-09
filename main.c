
#include <avr/io.h>
#include <util/delay.h>
#include <avr/sleep.h>
#include <avr/power.h>

/* DEFINES for the soft start */
#define SS_delay 25
#define SS_step 10
#define SS_target 200

int main(){

	/* I'm here because I've woken up from sleep */

	/*
	 * PB0 - PIN 1 - UNUSED
	 * PB1 - PIN 3 - OUTPUT - MOTOR PWM
	 * PB2 - PIN 4 - INPUT - STOP SIG
	 * PB3 - PIN 6 - INPUT - RESET/TRIGGER
	 */


	CLKMSR = 0b01; 		/* choose 128kHz Oscillator */
	CLKPSR = 0; 		/* clock prescaler = 0 */
	DDRB = 0b0011;
	PORTB = 0b1101;
	ADCSRA = 0;
	ACSR = 0;

	/* this is run if the chip is just turned on for the first time */
	if(!(RSTFLR & (1 << EXTRF))){
		goto imout;
	}
	RSTFLR = 0;

	uint8_t target = 0;
	while((SS_target > target) && ((target + SS_step) < SS_target)){
		target += SS_step;
		pwm(target);
		_delay_ms(SS_delay);
	}
	pwm(SS_target);


	uint16_t counterStop = 0; /* this is the timer for the stop in case the stop button never actuates. Times out after 25s. */
	while((counterStop < 1100) && (PINB & 0b100)){
		counterStop++;
		_delay_ms(10);
	}


	/* I've done my job, I'm going to sleep and using v. little power */
	imout:
		/* do some funky shit here with prescalers */
		DDRB = 0;
		TCCR0A = 0; /* disable the PWM module */
		PORTB = 0;
		ADCSRA = 0;
		PRR = 0b1111;
		set_sleep_mode(SLEEP_MODE_PWR_DOWN);
		sleep_enable();
		sleep_mode();
		sleep_cpu();

}

void pwm(uint8_t val){
	/*  start PWM */
		TCCR0A |= (1<<WGM00)|(1<<COM0B1);
		TCCR0B |= (1<<WGM02)|(1<<CS00);
		OCR0B = val;
}


