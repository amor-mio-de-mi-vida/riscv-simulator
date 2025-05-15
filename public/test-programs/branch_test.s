# Generated branch test program
# Generated at: 2025-05-15 12:05:13
# Total instructions: 2000
# Loop count: 66

addi x1, x0, 0
addi x2, x0, 2000
addi x3, x0, 10
addi x4, x0, -10
addi x5, x0, 0
addi x6, x0, 0
addi x7, x0, 0
addi x8, x0, 0
lui x9, 0x7FFFF
addi x9, x9, 0xFFF
lui x10, 0x80000
addi x11, x0, -1
addi x12, x0, 0

loop_branch:
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
    addi x1, x1, 1
    beq  x1, x2, end_branch
    bne  x1, x0, loop_branch
    addi x6, x6, 1
    blt  x6, x3, cond_continue
    bge  x6, x3, cond_reset
    cond_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    cond_reset:
    addi x6, x0, 0
    jal  x0, loop_branch
    addi x7, x7, 1
    bltu x7, x3, unsigned_continue
    bgeu x7, x3, unsigned_reset
    unsigned_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    unsigned_reset:
    addi x7, x0, 0
    jal  x0, loop_branch
    addi x8, x8, 1
    blt  x8, x4, signed_continue
    bge  x8, x4, signed_reset
    signed_continue:
    addi x5, x5, 1
    jal  x0, loop_branch
    signed_reset:
    addi x8, x0, 0
    jal  x0, loop_branch
end_branch:
    nop
