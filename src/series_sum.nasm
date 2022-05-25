JMP main
x: DB 10
y: DB 17
z: DB 0

main:
    mov a,[x] ; has value of smaller num
    mov b,[y] ; has value of larger num
    mov c,[x] ; running total

    .loop:
        inc a
        add c, a
        cmp a, b
        Jnz .loop
    mov [z], c ; store total in z
    hlt
