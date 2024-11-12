section .data
    msg db 'Hello, Architecture!', 0

section .text
    global _start

_start:
    ; Вывод сообщения
    mov eax, 4      ; системный вызов write
    mov ebx, 1      ; дескриптор stdout
    mov ecx, msg    ; адрес сообщения
    mov edx, 20     ; длина сообщения
    int 0x80        ; вызов ядра

    ; Завершение программы
    mov eax, 1      ; системный вызов exit
    xor ebx, ebx    ; код возврата 0
    int 0x80
