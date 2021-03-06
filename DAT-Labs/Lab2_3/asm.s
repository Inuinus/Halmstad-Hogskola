       NAME    main
       PUBLIC  main
       SECTION .text : CODE (2)
       THUMB

main
       MOV R0, #4 ; VARIABLE n (R0) - START VALUE 4
       MOV R1, #0 ; VARIABLE f (R1) - START VALUE 0
       MOV R2, #1 ; VARIABLE g (R2) - START VALUE 1
       BL FIBONACCI ; BRANCH WITH LINK FIBONACCI(COPIES THE ADRESS OF THE NEXT INSTRUCTION INTO LR(R14, THE LINK REGISTER)(LR 1 BIGGER THAN PC)
STOP B STOP ;Infinite walk

FIBONACCI    
       PUSH {LR} ;PUSH THE LR REGISTER
       CMP R0, #0 ;COMPARE R0 BY 0 
       BGT FIBONACCI_DO ;IF R0 IS GREATER THAN 0 BRANCH TO FIBONACCI_DO
       POP {PC} ;POP PC (PROGRAM COUNTER), 
                     
FIBONACCI_DO
        ADD R1, R1, R2 ;THE VARIABLE R1 OBTAINS THE ADDITION R1 + R2
        SUB R0, R0, #1 ;THE VARIABLE R0 OBTAINS THE SUBTRACTION R0 - #1
        SUB R2, R1, R2 ;THE VARIABLE R2 OBTAINS THE SUBTRACTION R1 - R2
        BL FIBONACCI ;BRANCH WITH LINK FIBONACCI(COPIES THE ADRESS OF THE NEXT INSTRUCTION INTO LR(R14, THE LINK REGISTER)(LR 1 BIGGER THAN PC)
        POP {PC} ;POP PC (PROGRAM COUNTER), TIL WE REACH NEAR THE PC
       END