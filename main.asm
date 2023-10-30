;-------------------------------------------------------------------------------
; MSP430 Assembler Code Template for use with TI Code Composer Studio
;
;
;-------------------------------------------------------------------------------
      .cdecls C,LIST,"msp430.h"       ; Include device header file
            
;-------------------------------------------------------------------------------
      .def    RESET                   ; Export program entry-point to
                                      ; make it known to linker.
;-------------------------------------------------------------------------------
      .text                           ; Assemble into program memory.
      .retain                         ; Override ELF conditional linking
                                      ; and retain current section.
      .retainrefs                     ; And retain any sections that have
                                      ; references to current section.

;-------------------------------------------------------------------------------
RESET    mov.w   #__STACK_END,SP         ; Initialize stackpointer
StopWDT  mov.w   #WDTPW|WDTHOLD,&WDTCTL  ; Stop watchdog timer


;-------------------------------------------------------------------------------
; Main loop here
;-------------------------------------------------------------------------------
main:
			mov.b #00h, &P1OUT
			mov.b #0FFh, &P1DIR
			mov.b #00h, &P3OUT
			mov.b #0FFh, &P3DIR
			bic.b #LOCKLPM5, &PM5CTL0




; Displaying 0 to 5 on the First Segment with calling the loop for 2nd Segment
loop:               mov.b #0C0h, &P1OUT ; Displaying 0
 			call #loopP3         ; Calling loopP3 for 2nd Segment
 			mov.b #0F9h, &P1OUT ; Displaying 1
 			call #loopP3
 			mov.b #0A4H, &P1OUT ; Displaying 2
 			call #loopP3
 			mov.b #0B0h, &P1OUT ; Displaying 3
 			call #loopP3
 			mov.b #99H,  &P1OUT ; Displaying 4
 			call #loopP3
 			mov.b #92H,  &P1OUT ; Displaying 5
 			call #loopP3
 			jmp loop            ; Repeating the loop
			nop
; Displaying 0 to 9 on the Second Segment with calling the delay.
loopP3: 		mov.b #0C0h, &P3OUT ; Displaying 0
 			call #Delay
 			mov.b #0F9h, &P3OUT ; Displaying 1
 			call #Delay
 			mov.b #0A4H, &P3OUT ; Displaying 2
 			call #Delay
 			mov.b #0B0h, &P3OUT ; Displaying 3
 			call #Delay
 			mov.b #99H,  &P3OUT ; Displaying 4
 			call #Delay
 			mov.b #92H,  &P3OUT ; Displaying 5
 			call #Delay
 			mov.b #82H,  &P3OUT ; Displaying 6
 			call #Delay
 			mov.b #0F8H, &P3OUT ; Displaying 7
 			call #Delay
 			mov.b #80H,  &P3OUT ; Displaying 8
 			call #Delay
 			mov.b #90H,  &P3OUT ; Displaying 9
 			call #Delay

Delay:
			mov.w #0FFFFh, R4 ;load FFFF in R4
d_loop:
			dec.w R4 ;decrement R4
			jnz d_loop ;jump to delay
			ret
                            
;-------------------------------------------------------------------------------
; Stack Pointer definition
;-------------------------------------------------------------------------------
      .global __STACK_END
      .sect   .stack
            
;-------------------------------------------------------------------------------
; Interrupt Vectors
;-------------------------------------------------------------------------------
       .sect   ".reset"                ; MSP430 RESET Vector
       .short  RESET
