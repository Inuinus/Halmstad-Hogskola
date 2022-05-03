        NAME    main
        PUBLIC  main
        SECTION .text : CODE (2)
        THUMB
        
main
     LDR R3, =0xAEDFCDEF ;R3, the variable that contains the loaded hexadecimal number
     LDR R4, =0xCEDFACDE ;R4, the variable that contains the second loaded hexadecimal number
     MOV R0, #0 ; The variable that contains the compare value for #32, also the add counter of #1
     MOV R1, #0 ; The variable that stores XOR value of R3 and R4.
     BL HamDistReg       ;Brach linked HamDistReg
STOP B STOP ; infinite walk 
  
HamDistReg
     EOR R1, R3, R4     ;R1 is the value that stores the executed XOR value between R3, R4
LOOP
     CMP R0, #32 ;Comparing R0 to #32(Bits), if the variable R0 contains 32 Branch Equals which means we go to FINISH
     BEQ FINSIH  ;Explaining the BEQ FINISH function above ^
     LSRS R1, #1 ;Left Shift Right(S)-Flagged numbers, Shifts the through the variable R1 with #1 each time.
     ADC R2, #0  ;Adds the carry flag to the variable R2
     ADD R0, R0, #1 ;Increase R0 by #1 to reach the last bit(#32-bits).
     B LOOP
     
FINSIH
     BX LR
     END