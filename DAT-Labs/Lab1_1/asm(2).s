        NAME    main
        PUBLIC  main
        SECTION .text : CODE (2)
        THUMB
main
        MOV R0, # 0     ; (R0) < 0
        MOV R1, # 0     ; (R1) < 0
LOOP    CMP R0, # 9     ; compare (R0) to 9
        BNE ADD0        ; different > jump to ADD0
        MOV R0, # 0     ; equal > restart
        ADD R1, R1, # 1 ; update first: (R1) < (R1) + 1
        B ADD1          ; jump to ADD1
ADD0    ADD R0, R0, # 1 ; (R0) < (R0) + 1
ADD1    CMP R1, # 10    ; compare (R1) to 10
        BNE LOOP        ; different > jump to LOOP, repeat
STOP    B STOP          ; infinite walk
        END