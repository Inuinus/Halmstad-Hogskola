        NAME    main
        PUBLIC  main
        SECTION .text : CODE (2)
        THUMB
          
SYSTICK_CTRL    EQU 0xE000E010
SYSTICK_RELOAD  EQU 0xE000E014
SYSTICK_VALUE   EQU 0xE000E018


main
          LDR SYSTICK_CTRL, #0
          LDR SYSTICK_VALUE, #0
          LDR SYSTICK_RELOAD, #59999
          LDR SYSTICK_CTRL, #1
          
STOP      B STOP
          END