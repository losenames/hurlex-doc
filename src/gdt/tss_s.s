; -------------------------------------------------
; 	加载 TR 寄存器索引
;
; 	hurley 2013/11/21
;
; -------------------------------------------------

[GLOBAL tss_flush]    ; TSS 刷新
tss_flush:
    mov ax, 0x2B      ; TSS 在全局描述符表里是第5个，同时 RPL 为 3
       		      ; 故而 00101011B 即就是 0x2B
    ltr ax            ; 加载到 TR 寄存器
    ret
