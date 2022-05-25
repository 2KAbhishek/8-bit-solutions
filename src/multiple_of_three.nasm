JMP start_q

input_value: DB 36

start_q:

    MOV A, [input_value] ;Load Value
    PUSH A ;Push for Function Call
    CALL multipleOfThree ;Call Function
    POP A ;Get Return Value
    ADD A, 48 ;Convert to ASCII
    MOV [232],A ;Print
    HLT

; Returns 1 if the value is a multiple of 3
; Returns 0 if the value is not a multiple of 3
multipleOfThree:
    POP B
    POP A
    AND A, 3
    CMP A, 0
    JZ isMultiple
    PUSH 0
    PUSH B
    RET

isMultiple:
    PUSH 1
    PUSH B
    RET
