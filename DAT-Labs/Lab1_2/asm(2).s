        NAME    main
        PUBLIC  main
        SECTION .text : CODE (2)
        THUMB
main
        MOV R0, # 0     ; (R0) < 0
        MOV R1, # 0     ; (R1) < 0
        MOV R2, # 0     ; (R2) < 0
        MOV R3, # 0x999 ; (R3) < 0x999
LOOP    CMP R2, # 99    ; compare (R2) to 99
        BNE CMP0        ; different > jump to CMP0
        MOV R1, # 0     ; equal > restart R1
        MOV R2, # 0     ; equal > restart R2
        ADD R0, R0, # 7 ; update first: (R0) < (R0) + 7 
        B LOOPE         ; jump to LOOPE
CMP0    CMP R1, # 9     ; R1 < 9 diffenrent > increase R0,R1,R2 by 1
        BNE ADD0
        MOV R1, # 0     ; (R0) = 0
        ADD R0, R0, # 13 ; update first: (R0) < (R0) + 13
        B LOOPE
ADD0    ADD R0, R0, # 1 ; update first: (R0) < (R0) + 1
        ADD R1, R1, # 1 ; update first: (R1) < (R1) + 1
        ADD R2, R2, # 1 ; update first: (R2) < (R2) + 1
        B LOOPE         ; jump to LOOPE
LOOPE   CMP R0, R3     ; compare (R0) to (R3)
        BNE LOOP        ; different > jump to LOOP, repeat
STOP    B STOP          ; infinite walk
        END