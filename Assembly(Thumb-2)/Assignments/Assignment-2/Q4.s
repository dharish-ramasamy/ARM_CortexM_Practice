;Q4.  Write an assembly program for SVC handlers to do the following: 
            - Before calling the SVC instruction put the processor in thread unprivileged access level with PSP acting as Stack pointer. 
            - Inside the handler display the exception number in register R0 
            - Inside the handler disable all hardware interrupts 
            - Inside the handler re-enable privileged access of thread mode 
            - Observe the results and note your obervations..

        AREA    MYCODE, CODE, READONLY
        ENTRY
        EXPORT  start
        EXPORT  SVC_Handler

start   PROC
        LDR     R0, =0x20001000      
        
        MSR     PSP, R0                     

        MRS     R0, CONTROL
        ORR     R0, R0, #0x03
        MSR     CONTROL, R0
        ISB
        
        SVC     #1

stop    B       stop                        
        ENDP

SVC_Handler PROC
        MRS     R0, IPSR

        CPSID   I

        MOV     R1, #0
        MSR     CONTROL, R1
        ISB

        CPSIE   I

        BX      LR
        ENDP
        END