         NAME    main
        PUBLIC  main
        SECTION .text : CODE (2)
        THUMB
main
      MOV R0, #0 ;Counter
      MOV R1, #0 ;Compare this value to the 32-bit number
      MOV R2, #0 ;The variable that stores what the bit differs in R3 to R4(EOR)
      LDR R3, =0xAEDFCDEF
      LDR R4, =0xCEDFACDE
      BL HamDistReg
STOP B STOP ; infinite walk

HamDistReg 
      EOR R1, R3, R4 ;(XOR), Adds the differences (1s) between R3 and R4 to R1
COUNTER
      CMP R0, #32 ; Compare the value of R0 to 32-bits, if R0 is 32 the loop stops and BEQ to STOP
      BEQ STOP
      LSLS R1, #1 ;Left shift left(S), jumps through the R1 register one at a time
      ADC R2, #0  ;Adds the carry to r2
      ADD R0, R0, #1 ;Increase our counter
      B COUNTER
 END 