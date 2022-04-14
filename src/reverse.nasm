; Write an assembly program that takes a null terminated string as input.
; Display the string in reverse order in the output screen.

JMP main
text:
    DB "Apple"
    DB 0

main:
    mov c, text
    mov d, 0
    mov b, 0

    .rev:
        push [c]
        inc c
        inc d
        cmp b, [c]
        jnz .rev

    mov c, text

    .save:
        pop a
        mov [c], a
        inc c
        dec d
        jnz .save

    mov d, 232
    mov c, text
    call print
    hlt

print:
    push a
    push b
    mov b, 0
    .loop:
        mov a, [c]
        mov [d], a
        inc c
        inc d
        cmp b, [c]
        jnz .loop
    pop b
    pop a
    ret
