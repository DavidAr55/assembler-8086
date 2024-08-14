TITLE BASIC_OPERATIONS

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

;   Sum
MOV AL,5          ; Load the value 5 into register AL
ADD AL,10         ; Add 10 to the value in AL (AL = AL + 10)

;   Subtraction
MOV AL,7          ; Load the value 7 into register AL
SUB AL,17         ; Subtract 17 from the value in AL (AL = AL - 17)

;   Multiplication
;   -Byte
MOV AL, 150       ; Load the value 150 into register AL
MOV BL, 2         ; Load the value 2 into register BL
MUL BL            ; Multiply AL by BL (result in AL)

;   -Word
MOV AX, 65535     ; Load the value 65535 into register AX
MOV BX, 65535     ; Load the value 65535 into register BX
MUL BX            ; Multiply AX by BX (result in DX:AX)

;   Division
MOV AX, 505       ; Load the value 505 into register AX
MOV BL, 3         ; Load the value 3 into register BL
DIV BL            ; Divide AX by BL (result in AL, remainder in AH)

MOV DX, 003FH     ; Load the value 003Fh into register DX
MOV AX, 5555H     ; Load the value 5555h into register AX
MOV BX, 0CCC4H    ; Load the value 0CCC4h into register BX
DIV BX            ; Divide DX:AX by BX (result in AX, remainder in DX)


;----------------------------------------------
RET
START ENDP
CODE ENDS

 END START