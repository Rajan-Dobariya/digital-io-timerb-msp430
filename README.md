# Digital-I-O-TimerB-MSP430

Title: **Digital I/O with TIMERB**

Objective:

To ensure the counter counting from 00 to 59 on a two-digit seven-segment display with the time difference between each count ensuring one second using the **MSP-EXP430FR2355** microcontroller.


## Pseudocode for Digital-I-O-TimerB-MSP430

### Steps:

**Step 1**: Initialise two ports of the Launchpad to be output for two 7-segment displays (In our case we have chosen ports P1 and P3 for the 1st and 2nd digits of the 7-segments respectively.\
**Step 2**: Turning ON the I/O Switch by clearing the first bit (Sets all the registers on high Impedance.)\
**Step 3**: Displaying 0 at the first digit. And 0 to 9 in sequence at the second digit of the display with a time variation of 1 second between numbers from the loopP3 fetched in the same loop.\
**Step 4**: Displaying 1 at the first digit. And 0 to 9 in sequence at the second digit of the display with a time variation of 1 second between numbers from the loopP3 fetched in the same loop.\
**Step 5**: Displaying 2 at the first digit. And 0 to 9 in sequence at the second digit of the display with a time variation of 1 second between numbers from the loopP3 fetched in the same loop.\
**Step 6**: Displaying 3 at the first digit. And 0 to 9 in sequence at the second digit of the display with a time variation of 1 second between numbers from the loopP3 fetched in the same loop.\
**Step 7**: Displaying 4 at the first digit. And 0 to 9 in sequence at the second digit of the display with a time variation of 1 second between numbers from the loopP3 fetched in the same loop.\
**Step 8**: Displaying 5 at the first digit. And 0 to 9 in sequence at the second digit of the display with a time variation of 1 second between numbers from the loopP3 fetched in the same loop.\
**Step 9**: Decrementing the R4 resistor loaded with the high bits for the delay.\
**Step 10**: Repeating the decrementing until it reaches 0 bits.\
**Step 11**: Repeating the loop, repeating displaying 0 to 59 digits.


## Pseudocode for Digital-I-O-TimerB-MSP430

To see the **(Common Anode)** pin configuration refer this [image](https://github.com/Rajan-Dobariya/digital-io-timerb-msp430/blob/main/C-Anode_Pinconfig.jpg) 

## Output

[Video link](https://usfedu-my.sharepoint.com/:v:/g/personal/dobariya_usf_edu/ETQxH999675Crooro5yTfGwBRG77tTmWwTGJ37se__cl7Q)
