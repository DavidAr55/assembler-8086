TITLE ASSEMBLER_STRUCTURE

DATA SEGMENT
;------------VARIABLE DECLARATION--------------

;----------------------------------------------
DATA ENDS

STACK SEGMENT
    DB 64 DUP(0)
STACK ENDS

CODE SEGMENT
    
START PROC FAR
    
ASSUME DS:DATA, CS:CODE, SS:STACK
PUSH DS
MOV AX,0
PUSH AX

MOV AX,DATA
MOV DS,AX
MOV ES,AX
;---------------MY PROGRAM HERE----------------
;
;--------General Purpose Registers in the 8086 CPU
;
;The 8086 processor has 8 general-purpose registers.
;Each register has its own name and is divided into two parts: a high part (High) and a low part (Low). 
;This allows each 16-bit register to be used as two 8-bit registers.
;                                                                                       
;AX - The Accumulator Register
;     Function: Mainly used for arithmetic and logic operations.
;
;Parts: AH: High byte of AX (8 bits).
;       AL: Low byte of AX (8 bits).
;
;       MOV AX, 1234h  ; Load the value 1234h into AX
;       MOV AH, 12h    ; Load the value 12h into AH (now AX = 1234h)
;       MOV AL, 34h    ; Load the value 34h into AL (now AX = 1234h)
;
;
;
;BX - The Base Register
;     Function: Used as a base for memory access.
;
;Parts: BH: High byte of BX (8 bits).
;       BL: Low byte of BX (8 bits).
;
;       MOV BX, 5678h  ; Load the value 5678h into BX
;       MOV BH, 56h    ; Load the value 56h into BH (now BX = 5678h)
;       MOV BL, 78h    ; Load the value 78h into BL (now BX = 5678h)
;
;
;
;CX - The Count Register
;     Function: Used primarily for loop counters and shift operations.
;
;Parts: CH: High byte of CX (8 bits).
;       CL: Low byte of CX (8 bits).
;
;       MOV CX, 0005h  ; Load the value 0005h into CX
;       LOOP_LABEL:    ; Define a loop label
;           Some code here
;       LOOP LOOP_LABEL ; Decrement CX and repeat until CX = 0
;
;
;
;DX - The Base Register
;     Function: Used in multiplication, division, and I/O operations.
;
;Parts: DH: High byte of DX (8 bits).
;       DL: Low byte of DX (8 bits).
;
;       MOV DX, 9ABCh  ; Load the value 9ABCh into DX
;       MOV DH, 9Ah    ; Load the value 9Ah into DH (now DX = 9ABCh)
;       MOV DL, BCh    ; Load the value BCh into DL (now DX = 9ABCh)                                                                                                                                                                     
;
;
;
;
;
;--------Index and Pointer Registers
;
;In addition to the general-purpose registers, the 8086 CPU has index and pointer registers, 
;which are mainly used for memory handling and stack operations.
;
;SI - Source Index Register
;     Function: Used as a source pointer in string operations (such as 'MOVSB', 'LODSB').
;
;Example: MOV SI, 2000h  ; Load the value 2000h into SI
;         MOV AL, [SI]   ; Load the byte at the address pointed to by SI into AL
;
;
;
;DI - Destination Index Register
;     Function: Used as a destination pointer in string operations.
;
;Example: MOV DI, 3000h  ; Load the value 3000h into DI
;         MOV [DI], AL   ; Store the value of AL at the address pointed to by DI
;
;
;
;BP - Base Pointer Register
;     Function: Used to access stack parameters in subroutines.
;
;Example: MOV BP, SP     ; Copy the stack pointer to BP
;         MOV AX, [BP+4] ; Load the value at BP+4 (a parameter) into AX
;
;
;
;SP - Stack Pointer Register
;     Function: Points to the top of the stack, used in push/pop operations.
;
;Example: PUSH AX        ; Save the value of AX onto the stack
;         POP BX         ; Retrieve the value from the stack into BX
;
;----------------------------------------------
RET
START ENDP
CODE ENDS

 END START