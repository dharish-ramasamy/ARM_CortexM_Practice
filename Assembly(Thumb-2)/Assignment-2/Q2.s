; Q2. Assuming that 10 bytes of data is residing at the SRAM location 
;     0x2000 0100 onwards add all the bytes taking into account carry 
;     propagation and store the result at 0x2000 0600 location. 

    AREA MYCODE, CODE, READONLY
    ENTRY
    EXPORT start

start PROC
    MOV R0, #0               
    MOV R5, #0               
    
    LDR R1, =0x20000100         
    LDR R2, =0x20000600      
    
    MOV R3, #10              

loop_carry
    LDRB R4, [R1], #1        
    ADDS R0, R0, R4          
    ADC R0, R0, R5           
    MOVS R5, #0             
    
    BCC no_carry             
    MOV R5, #1              
    
no_carry
    SUBS R3, R3, #1          
    BNE loop_carry          

    STR R0, [R2]             
    
    B .                      

	ENDP
	END