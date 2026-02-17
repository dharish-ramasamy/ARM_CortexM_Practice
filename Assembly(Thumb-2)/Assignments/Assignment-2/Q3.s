;Q3. Perform a block data transfer of 16 bytes from SRAM location 0x2000 
;    0100 onwards into the memory region 0x2000 0200. 

    AREA MYCODE, CODE, READONLY
    ENTRY
    EXPORT start

start PROC

    LDR R0, =0x20000100     
    

    LDR R1, =0x20000200     
    
    MOV R2, #16           

copy_loop
    LDRB R3, [R0], #1     
    STRB R3, [R1], #1      
    SUBS R2, R2, #1         
    BNE copy_loop          

    B .                     

    ENDP
    END