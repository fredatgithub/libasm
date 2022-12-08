; -----------------------------------------------------------------------------
; The strcpy() function copies the string pointed to by src, including the
; terminating null byte ('\0'), to the buffer pointed to by dest. The strings
; may not overlap, and the destination string dest must be large enough to
; receive the copy.
;
;   char *ft_strcpy(char *dest, const char *src);
;
;  The strcpy() functions return a pointer to the destination string dest.
; -----------------------------------------------------------------------------

            global ft_strcpy

            section .text
ft_strcpy:
            mov     rax, rdi        ; set dest to rax for return
.Lloop:
            mov     cl, [rsi]       ; set current char to cl
            test    cl, cl          ; test if current char is null
            je      .Lend           ; if null, break
            mov     [rdi], cl       ; add current char to dest
            inc     rsi             ; src++
            inc     rdi             ; dest++
            jmp    .Lloop
.Lend:
            mov     byte [rdi], 0x0 ; null-terminate dest
            ret
