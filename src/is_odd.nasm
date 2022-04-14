JMP start_q

input_value: DB 99

start_q:

    MOV A, [input_value] ;Load Value
    PUSH A ;Push for Function Call
    CALL isOdd ;Call Function
    POP A ;Get Return Value
    ADD A, 48 ;Convert to
    MOV [232],A ;Print
    HLT

; Push 1 for odd 0 for even
isOdd:
    POP B ;Get function call value
    POP A ;Get input value
    AND A, 1 ;Check if odd
    JZ even
    PUSH 1 ;Return 1
    PUSH B ;Return function call value
    RET

even:
    PUSH 0 ;Return 0
    PUSH B
    RET

