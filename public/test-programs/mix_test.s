# Generated mixed instruction test program
# Generated at: 2025-05-15 12:05:13
# Total instructions: 2000
# Loop count: 60

.data
    .align 4
    .space 1024  # 预分配1KB数据空间

.text
addi x1, x0, 0
addi x2, x0, 2000
lui  x3, 0x10000
addi x4, x3, 0
addi x5, x0, 0x1234
addi x6, x0, 0x1002
addi x7, x0, 0x09DC
addi x8, x0, 0x00DD
addi x9, x0, 0
addi x10, x0, 0
addi x11, x0, 0
addi x12, x0, 0
sw   x5, 0(x4)
sw   x6, 4(x4)
sw   x7, 8(x4)
sw   x8, 12(x4)

loop_mix:
    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

    lw   x13, 0(x4)
    addi x13, x13, 1
    sw   x13, 0(x4)
    lw   x14, 4(x4)
    sub  x14, x14, x13
    sw   x14, 4(x4)
    lw   x15, 8(x4)
    andi x15, x15, 0xFF
    beq  x15, x0, skip_logic
    ori  x15, x15, 0x100
    skip_logic:
    sw   x15, 8(x4)
    lw   x16, 12(x4)
    slli x16, x16, 2
    sw   x16, 16(x4)
    lw   x17, 16(x4)
    srli x17, x17, 1
    sw   x17, 20(x4)
    lw   x18, 0(x4)
    lw   x19, 4(x4)
    blt  x18, x19, store_less
    sw   x18, 24(x4)
    jal  x0, skip_store
    store_less:
    sw   x19, 24(x4)
    skip_store:
    lw   x20, 8(x4)
    addi x20, x20, 1
    sw   x20, 28(x4)
    lw   x21, 28(x4)
    slli x21, x21, 2
    addi x21, x21, 4
    sw   x21, 32(x4)
    addi x1, x1, 1
    beq  x1, x2, end_mix
    jal  x0, loop_mix

end_mix:
    nop
