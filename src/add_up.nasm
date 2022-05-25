JMP start_q

input_value: DB 10

result_value: DB 0

start_q:

    MOV A, [input_value] ;Load Value
    PUSH A ;Push for Function Call
    CALL addUp ;Call Function
    POP A ;Get Return Value
    MOV [result_value],A ;Store Answer
    HLT

; Recursive Function to Add Up
addUp:
    POP B;Load Value
    POP A
    ADD C, A
    CMP A, 0
    PUSH B
    JZ end_q ;If Zero, End
    DEC A
    PUSH A
    CALL addUp ;Call Function

end_q:
    MOV [result_value], C
    HLT
