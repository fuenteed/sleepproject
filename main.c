// Blinky Base

/*
*  User LED is on PC13 - Port C pin 13
*  First we must find out the bus that GPIOC lives on : APB2
*  APB starts at 0x40000000
*  GPIOC goes from 0x40011000 to 0x40011400
*  Then we need to enable the clock (the RCC - )
*/


#include "stm32f1xx.h"

#define GPIOCEN		(1U << 4)
#define PIN13		(1U << 13)
#define LED PIN13


int main(void)
{
	// Enable clock for Port C
	RCC->APB2ENR |= GPIOCEN;

	// Configure the GPIOC_CRL (Configure Register High) register
	// Pin 13 would be on pins 20 and 21
	// to configure as output 
	GPIOC->CRH |= (1U << 20); // set 20th bit
	GPIOC->CRH &= ~(1U << 21); // clear 21st bit

	while(1)
	{
		// flip bit to opposite using XOR
		GPIOC->ODR ^= LED;
		for (int i = 0; i < 1000000; i++) {} //cause delay to blink
	}

}



