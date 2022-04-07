        NAME    main
        
        PUBLIC  __iar_program_start
        PUBLIC  __vector
        
        SECTION .intvec:CODE:NOROOT (2)

__vector

        ARM

        ; Only the reset handler is required.
        LDR     PC,Reset_Addr           ; Reset
        LDR     PC,Undefined_Addr       ; Undefined instructions
        LDR     PC,SVC_Addr             ; Software interrupt (SWI/SVC)
        LDR     PC,Prefetch_Addr        ; Prefetch abort
        LDR     PC,Abort_Addr           ; Data abort
        DCD     0                       ; RESERVED
        LDR     PC,IRQ_Addr             ; IRQ
        LDR     PC,FIQ_Addr             ; FIQ

        DATA

Reset_Addr:     DCD   __iar_program_start
Undefined_Addr: DCD   Undefined_Handler
SVC_Addr:       DCD   SVC_Handler
Prefetch_Addr:  DCD   Prefetch_Handler
Abort_Addr:     DCD   Abort_Handler
IRQ_Addr:       DCD   IRQ_Handler
FIQ_Addr:       DCD   FIQ_Handler

        ARM

__iar_program_start
        B main

Undefined_Handler
SVC_Handler
Prefetch_Handler
Abort_Handler
IRQ_Handler
FIQ_Handler
__default_handler
        B __default_handler
                
                
main    B main
       
        END
