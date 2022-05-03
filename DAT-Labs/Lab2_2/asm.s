        NAME    main
        PUBLIC  main
        SECTION .text : CODE (2)
        THUMB
  
HamDistReg
     EOR R1, R3, R4
COUNTER
     CMP R0, #32 ; compare the value of r0 agains 32 if they are the same the loop stops
     BEQ FINSIH
     LSRS R1, #1
     ADC R2, #0  ;adds the carry to r2
     ADD R0, R0, #1 ;increases our counter
     B COUNTER
     
FINSIH
     BX LR
main
     MOV R0, #0 ; counter
     MOV R1, #0 ; Compare value to our 32-bit number
     LDR R3, =0xAEDFCDEF
     LDR R4, =0xCEDFACDE
     BL HamDistReg
STOP B STOP ; infinite walk 
     END