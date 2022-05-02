         NAME    main
        PUBLIC  main
        SECTION .text : CODE (2)
        THUMB
HamDistReg   
        CMP R3, R4 ; Compare R3 to R4 
        BLT r3Less ;if CMP is lesser than jump to r3Less
        SUB R2, R3, R4  ;Subtract to R2(New Variable) the difference between R3 to R4
        BX LR           ;BX LR
r3Less  SUB R2, R4, R3
        BX LR
main
        LDR R3, =0xAEDFCDEF  ; inupt parameter
        LDR R4, =0xCEDFACDE  ; input parameter
        BL HamDistReg ; subrutine
STOP    B STOP ; infinite walk
        END