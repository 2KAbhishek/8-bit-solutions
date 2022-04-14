; Write an assembly program that has two labeled variables as input and computes one as output.
; Have the program compute z=x^y. You can use the MUL command.

JMP main
x: DB 3
y: DB 4
z: DB 0

main:
    mov a,[x] ; has value of base
    mov b,[y] ; has value of exponent
    dec b
    mov c, z ; points to result

    .loop:
        mul [x]
        dec b
        Jnz .loop
    mov [z], a ; stores result in z
    hlt
