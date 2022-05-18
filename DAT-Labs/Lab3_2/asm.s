       NAME    main
       PUBLIC  main
       SECTION .text : CODE (2)
       THUMB
       PUBLIC main SysTick_Handler

SysTick_Handler
      MOV R0, #0xFFFFFF01
      
L1    ADD R0, #0x1
      SUBS R6, R0, R4 ; R4= 0x0FF
      BLT L1
      BX LR    
      
main
      MOV R0, #0x0
      MOV R6, #0x0
      MOV R4, #0xFF
      MOV R3, #0x7FFFFFFF
LOOP  
      ADD R0, #0x1
      CPSID I
      SUB R6, R0, R3
      CMP R6, #0x0
      CPSIE I
      BLT LOOP
      CPSID I
WAIT  NOP
      B WAIT

      END
