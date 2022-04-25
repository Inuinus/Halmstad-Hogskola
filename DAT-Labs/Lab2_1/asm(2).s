        NAME    main
        PUBLIC  main
        SECTION .text : CODE (2)
        THUMB
; Subroutine SWAP
; Input into R1
; Resulted in R0
; R2 used as local variable and saved in stack
SWAP    PUSH {R2}
        LSR R0, R1, # 24
        AND R2, R1, # 0xFF0000
        ORR R0, R0, R2, LSR #8
        AND R2, R1, #0xFF00
        ORR R0, R0, R2, LSL #8
        ORR R0, R0, R1, LSL #24
        POP {R2}
        BX LR    
main

        MOV R2, #0xAC
        LDR R1, =0xFF554400
        BL SWAP
STOP B  STOP
        
        END