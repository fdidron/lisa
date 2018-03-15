  section .multiboot_header     ;Multiboot2 header https://wiki.osdev.org/Multiboot
header_start:
  dd 0xE85250D6
  dd 0
  dd header_end - header_start
  dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start))
  dw 0
  dw 0
  dd 8
header_end: 
