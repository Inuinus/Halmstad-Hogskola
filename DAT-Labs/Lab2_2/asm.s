         NAME    main
        PUBLIC  main
        SECTION .text : CODE (2)
        THUMB
HamDistReg   
        CMP R3, R4 ; Compare R3 to R4 
        BLT r3Less ;if CMP is lesser than jump to r3Less
        SUB R2, R3, R4  ;Subtract to R2(New Variable) the difference between R3 to R4
        BX LR           ;BX LR
r3Less  SUB R2, R4, R3 ; The difference of the two variables is found via subtraction between them two
        BX LR
main
        LDR R3, =0xAEDFCDEF  ; Loading in a Hexadecimal number(32-bit)
        LDR R4, =0xCEDFACDE  ; Loading in a Hexadecimal number(32-bit)
        BL HamDistReg ; The subrutine of this program
STOP    B STOP ; infinite walk
        END