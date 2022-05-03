       NAME    main
       PUBLIC  main
       SECTION .text : CODE (2)
       THUMB

FIBONACCI    
       PUSH {LR}
       CMP R0, #0
       BGT FIBONACCI_DO
       POP {PC}
                     
FIBONACCI_DO
        ADD R1, R1, R2
        SUB R2, R1, R2
        SUB R0, R0, #1 
        BL FIBONACCI 
        POP {PC} 

main
       MOV R0, #6 ; n
       MOV R1, #0 ; f
       MOV R2, #1 ; g
       BL FIBONACCI
STOP B STOP
       END