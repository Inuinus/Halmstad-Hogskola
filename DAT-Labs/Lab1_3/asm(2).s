        NAME    main
        PUBLIC  main
        SECTION .text : CODE (2)
        THUMB
main
        NOP             ;<you will replace these
        B main          ;<rows with the program code
STOP B STOP

        ALIGNROM 2
        DATA
Vector
        DC32 14, 25, 2, 27, 3
        DC32 22, 13, 4, 24, 5
        DC32 26, 18, 8, 15, 9
        DC32 28, 10, 7, 17, 5
        END