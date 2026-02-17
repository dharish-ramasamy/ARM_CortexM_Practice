        AREA MYCODE1, CODE, READONLY
        ENTRY
        EXPORT start

start   PROC


        LDR     R0, =0x20001000
        MSR     PSP, R0

    
        MOVS    R0, #3         
        MSR     CONTROL, R0
        ISB

        SVC     #1             
        SVC     #2              
        SVC     #3             
        SVC     #4              

loop    B       loop           

        ENDP


        AREA MYCODE2, CODE, READONLY
        EXPORT SVC_Handler

SVC_Handler

        TST     LR, #4
        ITE     EQ
        MRSEQ   R0, MSP
        MRSNE   R0, PSP


        LDR     R1, [R0, #24]


        LDRB    R2, [R1, #-2]

        CMP     R2, #1
        BEQ     SVC01
        CMP     R2, #2
        BEQ     SVC02
        CMP     R2, #3
        BEQ     SVC03
        CMP     R2, #4
        BEQ     SVC04
        B       SVC_Exit

SVC01
        MOVS    R3, #2          
        MSR     CONTROL, R3
        ISB
        B       SVC_Exit

SVC02
        MOVS    R3, #0          
        MSR     CONTROL, R3
        ISB
        B       SVC_Exit

SVC03
        CPSID   I
        MOVS    R3, #3
        STR     R3, [R0, #0]    
        CPSIE   I
        B       SVC_Exit

SVC04
        CPSID   I
        CPSID   F
        MOVS    R3, #4
        STR     R3, [R0, #0]   
        CPSIE   F
        CPSIE   I
        B       SVC_Exit

SVC_Exit
        BX      LR

        END