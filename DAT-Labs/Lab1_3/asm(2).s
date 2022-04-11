        NAME    main
        PUBLIC  main
        SECTION .text : CODE (2)
        THUMB
main
        LDR R4, =Vector         ;Loads the vector into R4
        LDR R6, [R4]            ; first element of R4
        LDR R7, [R4]            ; first element of R4
        MOV R8, #0              ; set R8 to 0

        MOV R2, #0              ; set R2 to 0; counter
        MOV R3, #0              ; set R3 to 0; Vectorcounter

;looping through elemnts and counting them
VSIZE   LDR R11, [R4, R3, LSL #2]       ;vector[i]
        CMP R11, #0xABABABAB            ;Looking for last specifik, then END loop
        BEQ LOOP                        ;Jump to LOOP
        ADD R3, R3, #1                  ;increase the vector size(counter) with 1
        B VSIZE                         ;Jump to VSIZE

;loop min value
LOOP    CMP R2, R3                      ;compare counter to vectorsize(counter)
        BEQ LOOP2
        LDR R11, [R4, R2, LSL #2]       ;vector[i]
        CMP R11, R6                     ;compare vector[i] to R6(min value)
        BLO FMIN                        ;jump to FMIN
        ADD R2, R2, #1                  ;increase the counter by 1
        B LOOP                          ;jump to LOOP
FMIN    MOV R6, R11                     ;R6 = R11
        ADD R2, R2, #1                  ;increase the counter by 1
        B LOOP                          ;jump to LOOP

;loop max value
LOOP2   MOV R2, #0                      ;reset R2
CON     CMP R2, R3                      ;compare counter to vectorsize(counter)
        BEQ AVG
        LDR R11, [R4, R2, LSL #2]       ;vector[i]
        CMP R11, R7                     ;compare vector[i] to R7(min value)
        BHI FMAX                        ;jump to FMAX
        ADD R2, R2, #1                  ;increase the counter by 1
        B CON                           ;jump to LOOP2
FMAX    MOV R7, R11                     ;R7 = R11
        ADD R2, R2, #1                  ;increase the counter by 1
        B CON                           ;jump to LOOP2

;average
AVG     MOV R2, #0                      ;reset R2
CON2    CMP R2, R3                      ;compare R2 to R3
        BEQ DIV                         ;jump to DIV
        LDR R11, [R4, R2, LSL #2]       ;vector[i]
        ADD R8, R8, R11                 ;Add ALL of R11 to R8
        ADD R2, R2, #1                  ;increase R2 by 1 (counter)
        B CON2                          ;jump to AVG
DIV     UDIV R8, R3                     ;Divides R8 by R3   
STOP B STOP

        ALIGNROM 2
        DATA
Vector
        DC32 14, 25, 2, 27, 3
        DC32 22, 13, 4, 24, 5
        DC32 26, 18, 8, 15, 9
        DC32 28, 10, 7, 17, 5
        DC32 0xABABABAB         ;vector end point
        END