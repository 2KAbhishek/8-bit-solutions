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
