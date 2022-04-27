         NAME    main
        PUBLIC  main
        SECTION .text : CODE (2)
        THUMB
main
      MOV R2, #0xAC
      LDR R1, =0xFF554400
      BL SWAP
STOP B STOP ; infinite walk

SWAP PUSH {R2}
      LSR R0, R1, # 24
      AND R2, R1, # 0xFF0000
      ORR R0, R0, R2, LSR #8
      AND R2, R1, #0xFF00
      ORR R0, R0, R2, LSL #8
      ORR R0, R0, R1, LSL #24
      POP {R2}
      BX LR
 END 