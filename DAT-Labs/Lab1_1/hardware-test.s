        NAME    main
        PUBLIC  main
        SECTION .text : CODE(2)
        THUMB
        
main
        LDR R0, =0x400E0600
        LDR R1, =(1 << 12)
        STR R1, [R0]
        LDR R0, =0x400E1000
        LDR R1, =(1 << 27)
        STR R1, [R0, #0x00]
        STR R1, [R0, #0x10]     ; LED turns off
        STR R1, [R0, #0x30]     ; LED turns on
        STR R1, [R0, #0x34]     ; LED turns off
        B .

        END
