# Randomized data hazard test program
# Generated at: 2025-05-15 23:54:57.610990
# Total instructions: 2000

.data
    .align 4
    .space 1024

.text
    lui x3, 0x10000
    addi x10, x0, 682
    addi x11, x0, 1070
    addi x12, x0, -1255
    addi x13, x0, 1028

    sll x20, x20, x29
    or x29, x29, x20
    sw x29, 104(x3)
    sll x21, x21, x29
    srl x25, x25, x21
    and x19, x19, x25
    sub x24, x24, x19
    sra x19, x19, x24
    sw x19, 96(x3)
    addi x28, x19, -804
    addi x22, x28, -697
    sra x24, x24, x22
    srl x26, x26, x24
    sub x13, x13, x26
    srl x30, x30, x13
    lw x21, 116(x3)
    and x19, x19, x21
    xor x22, x22, x19
    lw x12, 28(x3)
    lw x20, 40(x3)
    sra x11, x11, x20
    sra x31, x31, x11
    or x17, x17, x31
    srl x28, x28, x17
    sub x30, x30, x28
    addi x17, x30, -1973
    sw x17, 112(x3)
    sub x25, x25, x17
    sub x22, x22, x25
    or x15, x15, x22
    xor x11, x11, x15
    sll x26, x26, x11
    xor x27, x27, x26
    lw x19, 124(x3)
    xor x22, x22, x19
    sw x22, 116(x3)
    and x17, x17, x22
    sll x23, x23, x17
    or x30, x30, x23
    or x15, x15, x30
    or x17, x17, x15
    srl x22, x22, x17
    sll x18, x18, x22
    srl x12, x12, x18
    xor x14, x14, x12
    xor x28, x28, x14
    xor x28, x28, x28
    addi x23, x28, 1018
    or x10, x10, x23
    sll x27, x27, x10
    xor x19, x19, x27
    and x24, x24, x19
    sub x10, x10, x24
    sra x23, x23, x10
    and x29, x29, x23
    or x19, x19, x29
    sw x19, 88(x3)
    sll x31, x31, x19
    lw x19, 24(x3)
    addi x13, x19, 1639
    sw x13, 92(x3)
    sub x26, x26, x13
    sub x25, x25, x26
    or x18, x18, x25
    sw x18, 28(x3)
    lw x24, 72(x3)
    lw x29, 92(x3)
    or x14, x14, x29
    and x16, x16, x14
    xor x14, x14, x16
    sll x30, x30, x14
    and x31, x31, x30
    sll x28, x28, x31
    srl x20, x20, x28
    sll x30, x30, x20
    sw x30, 104(x3)
    srl x28, x28, x30
    srl x12, x12, x28
    lw x26, 0(x3)
    lw x16, 56(x3)
    xor x30, x30, x16
    sra x10, x10, x30
    sra x24, x24, x10
    addi x17, x24, 259
    and x29, x29, x17
    sra x13, x13, x29
    srl x16, x16, x13
    sll x11, x11, x16
    addi x13, x11, 280
    sub x11, x11, x13
    sub x13, x13, x11
    addi x16, x13, 1289
    sra x16, x16, x16
    sw x16, 88(x3)
    sll x25, x25, x16
    sra x17, x17, x25
    xor x31, x31, x17
    sra x31, x31, x31
    sll x18, x18, x31
    srl x10, x10, x18
    sra x30, x30, x10
    and x13, x13, x30
    xor x18, x18, x13
    srl x13, x13, x18
    sra x30, x30, x13
    sw x30, 64(x3)
    xor x12, x12, x30
    sub x30, x30, x12
    lw x27, 52(x3)
    sll x24, x24, x27
    addi x13, x24, -1934
    or x29, x29, x13
    sra x31, x31, x29
    sw x31, 32(x3)
    sll x22, x22, x31
    sra x18, x18, x22
    sw x18, 28(x3)
    sll x22, x22, x18
    sll x13, x13, x22
    and x28, x28, x13
    or x12, x12, x28
    sub x30, x30, x12
    sll x24, x24, x30
    addi x28, x24, 1370
    srl x25, x25, x28
    or x21, x21, x25
    srl x31, x31, x21
    and x18, x18, x31
    sub x29, x29, x18
    xor x29, x29, x29
    and x13, x13, x29
    sub x30, x30, x13
    addi x24, x30, -836
    addi x28, x24, -856
    lw x24, 64(x3)
    and x13, x13, x24
    sw x13, 48(x3)
    addi x23, x13, 1611
    addi x14, x23, -1730
    sub x16, x16, x14
    xor x13, x13, x16
    addi x10, x13, 1595
    addi x17, x10, -45
    sll x23, x23, x17
    xor x20, x20, x23
    sw x20, 116(x3)
    xor x14, x14, x20
    xor x16, x16, x14
    sra x12, x12, x16
    sub x17, x17, x12
    srl x28, x28, x17
    sll x14, x14, x28
    or x10, x10, x14
    sw x10, 8(x3)
    addi x31, x10, -1866
    sll x13, x13, x31
    sw x13, 8(x3)
    sra x21, x21, x13
    sw x21, 8(x3)
    lw x18, 40(x3)
    sll x27, x27, x18
    srl x12, x12, x27
    srl x22, x22, x12
    sw x22, 80(x3)
    sll x21, x21, x22
    lw x10, 96(x3)
    sra x12, x12, x10
    lw x23, 116(x3)
    sub x15, x15, x23
    sub x14, x14, x15
    xor x30, x30, x14
    xor x19, x19, x30
    sub x30, x30, x19
    sub x22, x22, x30
    addi x21, x22, 643
    sub x11, x11, x21
    sra x19, x19, x11
    sra x12, x12, x19
    srl x16, x16, x12
    sub x12, x12, x16
    and x19, x19, x12
    lw x19, 24(x3)
    addi x29, x19, 366
    sra x15, x15, x29
    sub x22, x22, x15
    and x16, x16, x22
    lw x15, 80(x3)
    lw x19, 92(x3)
    or x27, x27, x19
    or x24, x24, x27
    lw x20, 104(x3)
    sra x10, x10, x20
    srl x19, x19, x10
    and x11, x11, x19
    xor x15, x15, x11
    lw x22, 28(x3)
    sra x18, x18, x22
    sra x21, x21, x18
    or x22, x22, x21
    and x16, x16, x22
    sub x17, x17, x16
    sra x24, x24, x17
    or x31, x31, x24
    sub x28, x28, x31
    or x19, x19, x28
    sub x13, x13, x19
    and x31, x31, x13
    srl x18, x18, x31
    sub x29, x29, x18
    and x12, x12, x29
    or x12, x12, x12
    sw x12, 68(x3)
    lw x31, 76(x3)
    sra x14, x14, x31
    sll x14, x14, x14
    addi x13, x14, 1123
    lw x23, 40(x3)
    lw x25, 8(x3)
    xor x21, x21, x25
    sll x30, x30, x21
    addi x21, x30, 169
    xor x21, x21, x21
    xor x31, x31, x21
    sw x31, 8(x3)
    sub x29, x29, x31
    sll x11, x11, x29
    sub x11, x11, x11
    sub x18, x18, x11
    sra x20, x20, x18
    sw x20, 104(x3)
    sll x31, x31, x20
    and x17, x17, x31
    lw x22, 80(x3)
    lw x18, 48(x3)
    sll x18, x18, x18
    or x18, x18, x18
    sra x19, x19, x18
    sra x19, x19, x19
    or x21, x21, x19
    sll x14, x14, x21
    srl x13, x13, x14
    sub x13, x13, x13
    xor x14, x14, x13
    and x18, x18, x14
    or x11, x11, x18
    sra x22, x22, x11
    lw x22, 68(x3)
    sub x29, x29, x22
    sll x10, x10, x29
    sll x15, x15, x10
    and x24, x24, x15
    srl x14, x14, x24
    lw x29, 32(x3)
    sub x12, x12, x29
    lw x27, 44(x3)
    lw x29, 112(x3)
    sll x28, x28, x29
    sub x28, x28, x28
    srl x27, x27, x28
    addi x28, x27, 986
    xor x17, x17, x28
    addi x19, x17, -377
    and x16, x16, x19
    or x17, x17, x16
    srl x23, x23, x17
    or x29, x29, x23
    or x27, x27, x29
    or x20, x20, x27
    sub x20, x20, x20
    or x18, x18, x20
    sll x31, x31, x18
    xor x17, x17, x31
    sw x17, 24(x3)
    xor x16, x16, x17
    sw x16, 0(x3)
    lw x31, 20(x3)
    addi x26, x31, -1579
    addi x10, x26, 1260
    or x12, x12, x10
    or x14, x14, x12
    addi x18, x14, -1622
    sll x29, x29, x18
    and x14, x14, x29
    xor x18, x18, x14
    sra x13, x13, x18
    and x14, x14, x13
    sra x27, x27, x14
    srl x12, x12, x27
    and x16, x16, x12
    sra x16, x16, x16
    lw x30, 100(x3)
    xor x30, x30, x30
    sra x18, x18, x30
    and x20, x20, x18
    sub x21, x21, x20
    sra x20, x20, x21
    lw x12, 16(x3)
    and x28, x28, x12
    sll x29, x29, x28
    and x30, x30, x29
    addi x24, x30, 1965
    or x15, x15, x24
    sw x15, 100(x3)
    sll x31, x31, x15
    addi x15, x31, -1465
    or x10, x10, x15
    sll x23, x23, x10
    or x16, x16, x23
    lw x18, 8(x3)
    sll x12, x12, x18
    addi x15, x12, -1360
    sll x31, x31, x15
    lw x19, 8(x3)
    addi x13, x19, -1980
    sll x10, x10, x13
    xor x29, x29, x10
    sll x30, x30, x29
    sra x14, x14, x30
    sw x14, 92(x3)
    sra x23, x23, x14
    addi x21, x23, -1747
    srl x28, x28, x21
    sw x28, 84(x3)
    or x27, x27, x28
    srl x26, x26, x27
    addi x31, x26, 1040
    srl x19, x19, x31
    or x11, x11, x19
    sll x29, x29, x11
    and x31, x31, x29
    sll x10, x10, x31
    lw x13, 84(x3)
    sw x13, 16(x3)
    sll x29, x29, x13
    sw x29, 0(x3)
    and x30, x30, x29
    sw x30, 88(x3)
    addi x12, x30, 250
    lw x27, 56(x3)
    sw x27, 116(x3)
    xor x13, x13, x27
    lw x31, 20(x3)
    sra x10, x10, x31
    xor x10, x10, x10
    addi x12, x10, 508
    lw x19, 32(x3)
    and x26, x26, x19
    lw x15, 52(x3)
    lw x15, 52(x3)
    sub x11, x11, x15
    sll x11, x11, x11
    xor x25, x25, x11
    sub x31, x31, x25
    sll x24, x24, x31
    and x16, x16, x24
    sll x18, x18, x16
    sll x26, x26, x18
    sra x27, x27, x26
    sra x15, x15, x27
    addi x21, x15, -186
    sub x26, x26, x21
    lw x16, 92(x3)
    or x23, x23, x16
    sub x23, x23, x23
    or x30, x30, x23
    and x17, x17, x30
    sra x14, x14, x17
    sub x21, x21, x14
    sw x21, 100(x3)
    sw x21, 0(x3)
    srl x17, x17, x21
    addi x24, x17, -193
    sra x20, x20, x24
    and x19, x19, x20
    xor x27, x27, x19
    lw x20, 40(x3)
    srl x12, x12, x20
    and x29, x29, x12
    sw x29, 36(x3)
    xor x10, x10, x29
    xor x30, x30, x10
    lw x31, 68(x3)
    sw x31, 72(x3)
    or x28, x28, x31
    lw x12, 96(x3)
    sw x12, 100(x3)
    lw x10, 20(x3)
    xor x19, x19, x10
    sll x14, x14, x19
    sra x18, x18, x14
    or x30, x30, x18
    sll x14, x14, x30
    srl x23, x23, x14
    sub x30, x30, x23
    sw x30, 64(x3)
    addi x17, x30, 515
    sra x18, x18, x17
    srl x27, x27, x18
    lw x28, 64(x3)
    and x21, x21, x28
    xor x14, x14, x21
    sll x25, x25, x14
    lw x30, 24(x3)
    sw x30, 108(x3)
    addi x17, x30, 889
    sra x30, x30, x17
    addi x10, x30, -626
    lw x26, 24(x3)
    sw x26, 88(x3)
    or x21, x21, x26
    sub x31, x31, x21
    or x23, x23, x31
    lw x29, 28(x3)
    lw x17, 80(x3)
    srl x31, x31, x17
    addi x17, x31, -1466
    lw x24, 112(x3)
    xor x25, x25, x24
    or x23, x23, x25
    lw x12, 116(x3)
    addi x10, x12, 134
    addi x12, x10, -29
    sll x25, x25, x12
    and x15, x15, x25
    srl x11, x11, x15
    and x17, x17, x11
    sub x30, x30, x17
    addi x21, x30, -1944
    sw x21, 8(x3)
    srl x20, x20, x21
    xor x15, x15, x20
    sub x31, x31, x15
    srl x15, x15, x31
    or x12, x12, x15
    sra x22, x22, x12
    sll x27, x27, x22
    sw x27, 12(x3)
    srl x11, x11, x27
    addi x16, x11, -686
    sra x12, x12, x16
    and x26, x26, x12
    sra x25, x25, x26
    srl x12, x12, x25
    sll x22, x22, x12
    sub x22, x22, x22
    sra x21, x21, x22
    sw x21, 12(x3)
    sll x27, x27, x21
    sra x26, x26, x27
    sw x26, 120(x3)
    sub x16, x16, x26
    or x12, x12, x16
    sw x12, 48(x3)
    sw x12, 64(x3)
    xor x24, x24, x12
    sll x29, x29, x24
    addi x23, x29, -1388
    sw x23, 52(x3)
    addi x27, x23, -1755
    or x29, x29, x27
    lw x31, 24(x3)
    sra x13, x13, x31
    lw x30, 100(x3)
    lw x11, 84(x3)
    sub x14, x14, x11
    and x14, x14, x14
    sw x14, 0(x3)
    sub x30, x30, x14
    and x30, x30, x30
    or x30, x30, x30
    or x22, x22, x30
    addi x10, x22, -2036
    or x10, x10, x10
    sub x23, x23, x10
    sw x23, 96(x3)
    or x23, x23, x23
    or x23, x23, x23
    or x12, x12, x23
    lw x11, 32(x3)
    addi x14, x11, -1895
    addi x25, x14, 1879
    lw x25, 96(x3)
    sra x11, x11, x25
    srl x22, x22, x11
    sra x19, x19, x22
    or x21, x21, x19
    or x17, x17, x21
    srl x14, x14, x17
    lw x22, 88(x3)
    sll x20, x20, x22
    srl x25, x25, x20
    sw x25, 28(x3)
    sll x26, x26, x25
    or x27, x27, x26
    xor x30, x30, x27
    addi x23, x30, -183
    addi x11, x23, 1164
    srl x20, x20, x11
    sw x20, 48(x3)
    addi x26, x20, -686
    sub x12, x12, x26
    sra x27, x27, x12
    sw x27, 80(x3)
    srl x18, x18, x27
    sra x23, x23, x18
    sub x30, x30, x23
    xor x15, x15, x30
    addi x26, x15, -1305
    addi x13, x26, -33
    sw x13, 76(x3)
    xor x29, x29, x13
    srl x31, x31, x29
    srl x13, x13, x31
    and x21, x21, x13
    sw x21, 76(x3)
    sw x21, 88(x3)
    xor x26, x26, x21
    xor x19, x19, x26
    or x30, x30, x19
    sll x13, x13, x30
    srl x23, x23, x13
    sw x23, 8(x3)
    srl x13, x13, x23
    and x16, x16, x13
    addi x16, x16, -1415
    srl x15, x15, x16
    and x23, x23, x15
    srl x15, x15, x23
    addi x25, x15, -591
    sra x22, x22, x25
    xor x30, x30, x22
    sll x10, x10, x30
    lw x22, 48(x3)
    sll x11, x11, x22
    sub x25, x25, x11
    or x22, x22, x25
    sra x23, x23, x22
    xor x21, x21, x23
    lw x15, 120(x3)
    and x31, x31, x15
    addi x18, x31, 933
    or x23, x23, x18
    sll x17, x17, x23
    or x16, x16, x17
    sw x16, 60(x3)
    lw x27, 8(x3)
    and x30, x30, x27
    sll x19, x19, x30
    sw x19, 124(x3)
    sub x17, x17, x19
    sub x18, x18, x17
    addi x31, x18, 2039
    sw x31, 80(x3)
    sll x10, x10, x31
    addi x23, x10, -1001
    lw x20, 56(x3)
    sub x23, x23, x20
    lw x23, 112(x3)
    sra x23, x23, x23
    addi x22, x23, -1204
    or x11, x11, x22
    sw x11, 88(x3)
    sra x25, x25, x11
    lw x15, 84(x3)
    xor x13, x13, x15
    sub x21, x21, x13
    addi x13, x21, -816
    or x19, x19, x13
    and x23, x23, x19
    sw x23, 28(x3)
    addi x24, x23, -448
    sll x25, x25, x24
    sra x11, x11, x25
    xor x23, x23, x11
    addi x15, x23, -196
    lw x27, 40(x3)
    sll x16, x16, x27
    srl x14, x14, x16
    or x19, x19, x14
    and x13, x13, x19
    sll x31, x31, x13
    sra x25, x25, x31
    sw x25, 84(x3)
    sw x25, 44(x3)
    sw x25, 96(x3)
    sra x21, x21, x25
    xor x20, x20, x21
    addi x30, x20, 232
    sra x29, x29, x30
    sub x13, x13, x29
    sra x15, x15, x13
    sw x15, 88(x3)
    sw x15, 80(x3)
    and x19, x19, x15
    sll x14, x14, x19
    sw x14, 88(x3)
    and x20, x20, x14
    lw x14, 16(x3)
    sra x12, x12, x14
    sll x16, x16, x12
    srl x21, x21, x16
    xor x29, x29, x21
    sra x29, x29, x29
    or x23, x23, x29
    and x15, x15, x23
    or x26, x26, x15
    addi x13, x26, -1198
    sra x15, x15, x13
    xor x30, x30, x15
    sub x28, x28, x30
    or x15, x15, x28
    and x23, x23, x15
    srl x26, x26, x23
    and x29, x29, x26
    sll x13, x13, x29
    addi x29, x13, -834
    xor x20, x20, x29
    xor x25, x25, x20
    addi x14, x25, 804
    sll x16, x16, x14
    and x28, x28, x16
    xor x26, x26, x28
    or x11, x11, x26
    xor x30, x30, x11
    or x24, x24, x30
    sub x20, x20, x24
    lw x12, 32(x3)
    srl x10, x10, x12
    sw x10, 112(x3)
    addi x29, x10, -1323
    sll x28, x28, x29
    or x18, x18, x28
    sw x18, 104(x3)
    xor x24, x24, x18
    sll x17, x17, x24
    addi x14, x17, -184
    sw x14, 32(x3)
    xor x22, x22, x14
    sw x22, 92(x3)
    sll x25, x25, x22
    and x25, x25, x25
    and x19, x19, x25
    lw x25, 104(x3)
    or x29, x29, x25
    sra x25, x25, x29
    srl x30, x30, x25
    xor x31, x31, x30
    sra x20, x20, x31
    lw x13, 60(x3)
    lw x11, 92(x3)
    and x15, x15, x11
    xor x10, x10, x15
    srl x27, x27, x10
    sub x29, x29, x27
    sll x27, x27, x29
    sra x30, x30, x27
    srl x29, x29, x30
    addi x13, x29, 305
    sub x27, x27, x13
    and x19, x19, x27
    or x12, x12, x19
    lw x18, 28(x3)
    sra x17, x17, x18
    lw x16, 64(x3)
    sub x31, x31, x16
    or x21, x21, x31
    srl x20, x20, x21
    addi x31, x20, 747
    and x17, x17, x31
    or x27, x27, x17
    or x17, x17, x27
    addi x31, x17, -2008
    lw x31, 8(x3)
    or x31, x31, x31
    addi x22, x31, -1315
    or x24, x24, x22
    sra x28, x28, x24
    and x26, x26, x28
    and x21, x21, x26
    sra x12, x12, x21
    sra x11, x11, x12
    sra x13, x13, x11
    sw x13, 32(x3)
    sra x21, x21, x13
    srl x22, x22, x21
    sll x20, x20, x22
    sub x24, x24, x20
    sub x28, x28, x24
    and x22, x22, x28
    addi x19, x22, 1222
    xor x29, x29, x19
    xor x22, x22, x29
    sra x24, x24, x22
    sub x30, x30, x24
    sw x30, 68(x3)
    addi x20, x30, 1572
    sw x20, 32(x3)
    addi x13, x20, 1526
    addi x13, x13, 1767
    sw x13, 48(x3)
    sw x13, 52(x3)
    lw x10, 48(x3)
    lw x11, 64(x3)
    sw x11, 124(x3)
    sw x11, 124(x3)
    or x13, x13, x11
    sub x20, x20, x13
    sll x25, x25, x20
    sw x25, 60(x3)
    addi x30, x25, -810
    sll x21, x21, x30
    xor x31, x31, x21
    sll x18, x18, x31
    and x25, x25, x18
    sll x24, x24, x25
    sw x24, 104(x3)
    sw x24, 120(x3)
    sra x22, x22, x24
    xor x19, x19, x22
    sra x25, x25, x19
    sll x14, x14, x25
    sll x24, x24, x14
    addi x27, x24, 61
    sra x16, x16, x27
    sll x14, x14, x16
    sub x24, x24, x14
    sra x21, x21, x24
    sub x29, x29, x21
    xor x28, x28, x29
    sll x29, x29, x28
    lw x10, 80(x3)
    and x18, x18, x10
    addi x18, x18, 1108
    or x30, x30, x18
    addi x11, x30, 572
    sra x23, x23, x11
    addi x28, x23, 1599
    and x31, x31, x28
    lw x20, 108(x3)
    and x23, x23, x20
    srl x23, x23, x23
    xor x14, x14, x23
    addi x22, x14, 730
    sll x27, x27, x22
    addi x13, x27, -1786
    sw x13, 0(x3)
    addi x18, x13, 427
    lw x18, 40(x3)
    sll x26, x26, x18
    sw x26, 108(x3)
    sll x27, x27, x26
    or x21, x21, x27
    srl x15, x15, x21
    lw x19, 52(x3)
    sra x21, x21, x19
    sw x21, 76(x3)
    sub x31, x31, x21
    sra x14, x14, x31
    addi x26, x14, -1310
    xor x28, x28, x26
    sw x28, 44(x3)
    or x25, x25, x28
    and x10, x10, x25
    addi x20, x10, 108
    sub x15, x15, x20
    sll x14, x14, x15
    sw x14, 28(x3)
    sra x18, x18, x14
    or x23, x23, x18
    sll x13, x13, x23
    addi x28, x13, -1602
    srl x13, x13, x28
    sw x13, 100(x3)
    srl x14, x14, x13
    sll x10, x10, x14
    sra x17, x17, x10
    lw x15, 4(x3)
    sra x11, x11, x15
    srl x12, x12, x11
    sw x12, 24(x3)
    addi x17, x12, 1282
    sw x17, 36(x3)
    addi x29, x17, 990
    xor x18, x18, x29
    sub x12, x12, x18
    and x13, x13, x12
    sub x16, x16, x13
    sll x26, x26, x16
    lw x20, 52(x3)
    xor x31, x31, x20
    or x20, x20, x31
    sub x16, x16, x20
    sub x11, x11, x16
    sw x11, 124(x3)
    addi x27, x11, 347
    and x21, x21, x27
    sll x23, x23, x21
    sub x27, x27, x23
    xor x26, x26, x27
    or x22, x22, x26
    lw x28, 48(x3)
    addi x16, x28, 1814
    and x16, x16, x16
    or x16, x16, x16
    sll x18, x18, x16
    sub x10, x10, x18
    and x29, x29, x10
    sw x29, 28(x3)
    sw x29, 44(x3)
    or x17, x17, x29
    srl x10, x10, x17
    lw x15, 12(x3)
    sw x15, 8(x3)
    lw x13, 56(x3)
    sub x27, x27, x13
    lw x26, 88(x3)
    sra x19, x19, x26
    or x24, x24, x19
    srl x20, x20, x24
    lw x10, 40(x3)
    or x23, x23, x10
    addi x25, x23, 1917
    sub x25, x25, x25
    and x15, x15, x25
    sll x22, x22, x15
    and x31, x31, x22
    sll x13, x13, x31
    sll x22, x22, x13
    sub x13, x13, x22
    sll x18, x18, x13
    sw x18, 44(x3)
    and x16, x16, x18
    sw x16, 4(x3)
    sub x15, x15, x16
    or x18, x18, x15
    or x29, x29, x18
    sw x29, 120(x3)
    lw x22, 76(x3)
    sw x22, 16(x3)
    srl x19, x19, x22
    sub x12, x12, x19
    sll x29, x29, x12
    sra x20, x20, x29
    and x12, x12, x20
    sw x12, 112(x3)
    sub x13, x13, x12
    addi x30, x13, -1319
    lw x13, 112(x3)
    addi x28, x13, -1985
    srl x28, x28, x28
    addi x27, x28, -503
    sra x23, x23, x27
    sra x22, x22, x23
    addi x10, x22, -797
    srl x31, x31, x10
    sra x25, x25, x31
    addi x30, x25, 956
    addi x10, x30, -1314
    xor x18, x18, x10
    sub x24, x24, x18
    srl x21, x21, x24
    addi x14, x21, -458
    xor x29, x29, x14
    or x20, x20, x29
    or x19, x19, x20
    sra x10, x10, x19
    and x13, x13, x10
    sub x23, x23, x13
    lw x18, 0(x3)
    srl x10, x10, x18
    lw x26, 56(x3)
    sub x30, x30, x26
    sw x30, 112(x3)
    xor x22, x22, x30
    and x28, x28, x22
    addi x23, x28, 420
    lw x19, 0(x3)
    or x16, x16, x19
    and x15, x15, x16
    and x16, x16, x15
    or x31, x31, x16
    or x21, x21, x31
    sra x13, x13, x21
    sw x13, 88(x3)
    sll x17, x17, x13
    sll x16, x16, x17
    addi x14, x16, 1751
    sll x20, x20, x14
    sll x16, x16, x20
    and x10, x10, x16
    sra x20, x20, x10
    addi x18, x20, 727
    or x19, x19, x18
    sub x30, x30, x19
    xor x19, x19, x30
    xor x16, x16, x19
    sll x11, x11, x16
    xor x21, x21, x11
    sw x21, 72(x3)
    srl x14, x14, x21
    and x18, x18, x14
    sll x22, x22, x18
    sub x19, x19, x22
    sra x25, x25, x19
    sub x10, x10, x25
    srl x12, x12, x10
    and x29, x29, x12
    and x15, x15, x29
    sub x16, x16, x15
    srl x19, x19, x16
    sw x19, 20(x3)
    xor x16, x16, x19
    sra x11, x11, x16
    sw x11, 36(x3)
    sll x29, x29, x11
    addi x27, x29, -211
    sll x18, x18, x27
    or x18, x18, x18
    xor x15, x15, x18
    sll x30, x30, x15
    xor x20, x20, x30
    sub x23, x23, x20
    sra x31, x31, x23
    srl x28, x28, x31
    addi x31, x28, -811
    lw x21, 92(x3)
    sw x21, 112(x3)
    sw x21, 120(x3)
    addi x31, x21, 771
    sw x31, 124(x3)
    lw x31, 76(x3)
    sub x28, x28, x31
    xor x17, x17, x28
    lw x15, 24(x3)
    sra x13, x13, x15
    srl x16, x16, x13
    sub x21, x21, x16
    xor x28, x28, x21
    lw x15, 64(x3)
    sub x30, x30, x15
    and x15, x15, x30
    sra x31, x31, x15
    lw x11, 56(x3)
    sra x12, x12, x11
    addi x20, x12, 728
    xor x17, x17, x20
    xor x25, x25, x17
    sw x25, 84(x3)
    sub x29, x29, x25
    sub x31, x31, x29
    addi x22, x31, 217
    sra x12, x12, x22
    or x23, x23, x12
    addi x19, x23, 1839
    and x20, x20, x19
    sll x24, x24, x20
    xor x15, x15, x24
    sra x25, x25, x15
    or x10, x10, x25
    addi x14, x10, 1721
    addi x27, x14, 751
    xor x20, x20, x27
    sub x31, x31, x20
    lw x26, 80(x3)
    lw x20, 56(x3)
    lw x14, 16(x3)
    sub x16, x16, x14
    or x29, x29, x16
    and x18, x18, x29
    sw x18, 104(x3)
    xor x25, x25, x18
    sll x17, x17, x25
    sra x21, x21, x17
    and x30, x30, x21
    or x22, x22, x30
    xor x19, x19, x22
    and x30, x30, x19
    sra x23, x23, x30
    sra x11, x11, x23
    sw x11, 80(x3)
    sra x10, x10, x11
    addi x14, x10, -262
    xor x22, x22, x14
    sll x25, x25, x22
    and x31, x31, x25
    xor x24, x24, x31
    sra x11, x11, x24
    or x12, x12, x11
    lw x23, 108(x3)
    or x20, x20, x23
    xor x26, x26, x20
    and x17, x17, x26
    sra x27, x27, x17
    sra x15, x15, x27
    xor x17, x17, x15
    srl x19, x19, x17
    srl x27, x27, x19
    sra x14, x14, x27
    and x25, x25, x14
    sub x11, x11, x25
    sw x11, 16(x3)
    or x16, x16, x11
    lw x31, 116(x3)
    sra x18, x18, x31
    sw x18, 60(x3)
    lw x22, 24(x3)
    sll x30, x30, x22
    sll x15, x15, x30
    sub x10, x10, x15
    xor x18, x18, x10
    sw x18, 96(x3)
    lw x29, 48(x3)
    sra x17, x17, x29
    xor x31, x31, x17
    xor x29, x29, x31
    sub x11, x11, x29
    sw x11, 4(x3)
    sll x23, x23, x11
    sll x21, x21, x23
    sub x18, x18, x21
    sra x14, x14, x18
    or x27, x27, x14
    sll x10, x10, x27
    addi x20, x10, -1792
    sll x10, x10, x20
    sll x17, x17, x10
    srl x19, x19, x17
    xor x16, x16, x19
    srl x28, x28, x16
    and x30, x30, x28
    xor x11, x11, x30
    xor x24, x24, x11
    sll x29, x29, x24
    xor x14, x14, x29
    srl x20, x20, x14
    sll x19, x19, x20
    and x10, x10, x19
    srl x17, x17, x10
    lw x17, 116(x3)
    srl x28, x28, x17
    and x31, x31, x28
    srl x24, x24, x31
    lw x10, 20(x3)
    sub x14, x14, x10
    addi x30, x14, 801
    srl x22, x22, x30
    addi x19, x22, 1829
    sra x11, x11, x19
    srl x17, x17, x11
    sra x12, x12, x17
    and x27, x27, x12
    and x31, x31, x27
    sll x18, x18, x31
    sw x18, 112(x3)
    sub x28, x28, x18
    sub x25, x25, x28
    or x11, x11, x25
    lw x20, 124(x3)
    srl x13, x13, x20
    sra x24, x24, x13
    sra x10, x10, x24
    xor x21, x21, x10
    sub x11, x11, x21
    srl x19, x19, x11
    and x10, x10, x19
    sra x20, x20, x10
    or x14, x14, x20
    or x15, x15, x14
    sw x15, 48(x3)
    sw x15, 28(x3)
    sll x19, x19, x15
    addi x15, x19, -288
    xor x11, x11, x15
    and x30, x30, x11
    srl x26, x26, x30
    xor x19, x19, x26
    addi x22, x19, -1812
    addi x24, x22, 1940
    addi x31, x24, 1544
    sra x13, x13, x31
    sra x20, x20, x13
    or x11, x11, x20
    addi x12, x11, -855
    sub x26, x26, x12
    addi x22, x26, -984
    sll x23, x23, x22
    sub x10, x10, x23
    sll x16, x16, x10
    xor x14, x14, x16
    sw x14, 72(x3)
    lw x27, 124(x3)
    sll x12, x12, x27
    or x26, x26, x12
    and x31, x31, x26
    or x23, x23, x31
    and x13, x13, x23
    and x22, x22, x13
    sw x22, 20(x3)
    srl x21, x21, x22
    srl x28, x28, x21
    sw x28, 44(x3)
    xor x20, x20, x28
    xor x27, x27, x20
    sra x12, x12, x27
    srl x14, x14, x12
    sra x20, x20, x14
    lw x18, 124(x3)
    sra x22, x22, x18
    sw x22, 44(x3)
    xor x31, x31, x22
    xor x14, x14, x31
    lw x21, 100(x3)
    sra x25, x25, x21
    and x26, x26, x25
    and x16, x16, x26
    xor x10, x10, x16
    sra x17, x17, x10
    xor x17, x17, x17
    and x19, x19, x17
    sw x19, 112(x3)
    sll x27, x27, x19
    or x20, x20, x27
    xor x30, x30, x20
    srl x22, x22, x30
    xor x30, x30, x22
    addi x24, x30, 579
    sll x15, x15, x24
    sll x24, x24, x15
    sub x10, x10, x24
    xor x19, x19, x10
    lw x28, 16(x3)
    or x19, x19, x28
    addi x22, x19, 1721
    srl x17, x17, x22
    sw x17, 120(x3)
    lw x28, 36(x3)
    sw x28, 56(x3)
    and x17, x17, x28
    sll x15, x15, x17
    sw x15, 80(x3)
    srl x15, x15, x15
    sub x22, x22, x15
    addi x14, x22, 1565
    xor x23, x23, x14
    xor x20, x20, x23
    lw x18, 12(x3)
    lw x31, 12(x3)
    srl x11, x11, x31
    and x11, x11, x11
    srl x30, x30, x11
    or x20, x20, x30
    sub x24, x24, x20
    lw x19, 72(x3)
    sll x24, x24, x19
    and x19, x19, x24
    lw x17, 32(x3)
    addi x21, x17, 718
    and x13, x13, x21
    and x17, x17, x13
    sw x17, 80(x3)
    xor x25, x25, x17
    xor x12, x12, x25
    or x31, x31, x12
    or x23, x23, x31
    sub x14, x14, x23
    lw x17, 40(x3)
    xor x26, x26, x17
    addi x18, x26, -1477
    lw x31, 112(x3)
    and x13, x13, x31
    or x15, x15, x13
    sra x31, x31, x15
    sw x31, 88(x3)
    sw x31, 68(x3)
    or x26, x26, x31
    srl x13, x13, x26
    sub x10, x10, x13
    and x19, x19, x10
    sra x26, x26, x19
    sll x26, x26, x26
    lw x28, 72(x3)
    srl x14, x14, x28
    xor x31, x31, x14
    srl x18, x18, x31
    sub x17, x17, x18
    xor x23, x23, x17
    sub x31, x31, x23
    sll x20, x20, x31
    sw x20, 112(x3)
    sub x24, x24, x20
    xor x10, x10, x24
    or x15, x15, x10
    addi x25, x15, 1753
    sra x30, x30, x25
    sll x27, x27, x30
    sw x27, 72(x3)
    addi x16, x27, 210
    sub x14, x14, x16
    sll x18, x18, x14
    or x15, x15, x18
    addi x21, x15, -1166
    addi x25, x21, 841
    addi x13, x25, -170
    sub x24, x24, x13
    lw x30, 52(x3)
    srl x11, x11, x30
    xor x26, x26, x11
    or x30, x30, x26
    lw x18, 80(x3)
    lw x22, 72(x3)
    addi x25, x22, -281
    xor x18, x18, x25
    sra x25, x25, x18
    sra x24, x24, x25
    xor x16, x16, x24
    sll x27, x27, x16
    and x31, x31, x27
    addi x16, x31, -411
    sra x12, x12, x16
    sll x27, x27, x12
    addi x14, x27, -1089
    lw x26, 48(x3)
    addi x27, x26, -85
    xor x26, x26, x27
    and x28, x28, x26
    sw x28, 64(x3)
    addi x25, x28, 553
    xor x30, x30, x25
    srl x19, x19, x30
    sub x19, x19, x19
    addi x23, x19, 1314
    sra x24, x24, x23
    srl x29, x29, x24
    srl x25, x25, x29
    addi x26, x25, 1155
    sra x15, x15, x26
    addi x21, x15, 212
    or x10, x10, x21
    and x25, x25, x10
    and x14, x14, x25
    and x15, x15, x14
    sll x20, x20, x15
    lw x22, 8(x3)
    sll x14, x14, x22
    or x26, x26, x14
    sw x26, 100(x3)
    lw x24, 4(x3)
    sub x16, x16, x24
    sra x21, x21, x16
    and x25, x25, x21
    sw x25, 64(x3)
    sra x29, x29, x25
    sra x29, x29, x29
    lw x16, 72(x3)
    sw x16, 104(x3)
    addi x31, x16, 2041
    addi x31, x31, -1720
    sra x24, x24, x31
    sra x29, x29, x24
    sll x22, x22, x29
    srl x21, x21, x22
    and x26, x26, x21
    sw x26, 88(x3)
    xor x16, x16, x26
    sw x16, 72(x3)
    and x31, x31, x16
    xor x22, x22, x31
    xor x21, x21, x22
    or x12, x12, x21
    sub x17, x17, x12
    and x29, x29, x17
    sub x15, x15, x29
    srl x19, x19, x15
    sub x14, x14, x19
    lw x30, 116(x3)
    srl x19, x19, x30
    or x13, x13, x19
    srl x29, x29, x13
    xor x12, x12, x29
    lw x19, 0(x3)
    srl x11, x11, x19
    sw x11, 32(x3)
    addi x28, x11, 1764
    or x28, x28, x28
    or x28, x28, x28
    sra x13, x13, x28
    addi x17, x13, 1573
    lw x21, 72(x3)
    sra x10, x10, x21
    and x16, x16, x10
    xor x17, x17, x16
    sub x31, x31, x17
    srl x29, x29, x31
    xor x14, x14, x29
    srl x12, x12, x14
    and x24, x24, x12
    and x20, x20, x24
    sub x26, x26, x20
    xor x10, x10, x26
    sub x31, x31, x10
    srl x11, x11, x31
    addi x24, x11, 1277
    and x14, x14, x24
    or x26, x26, x14
    addi x31, x26, -1453
    and x24, x24, x31
    sub x28, x28, x24
    and x18, x18, x28
    sw x18, 48(x3)
    and x18, x18, x18
    and x31, x31, x18
    and x11, x11, x31
    addi x19, x11, -1668
    and x22, x22, x19
    and x26, x26, x22
    lw x12, 8(x3)
    sll x31, x31, x12
    sll x31, x31, x31
    or x13, x13, x31
    and x10, x10, x13
    and x18, x18, x10
    xor x12, x12, x18
    sll x30, x30, x12
    and x22, x22, x30
    or x13, x13, x22
    and x27, x27, x13
    and x18, x18, x27
    sra x21, x21, x18
    lw x17, 88(x3)
    addi x22, x17, -1642
    sub x30, x30, x22
    xor x20, x20, x30
    addi x14, x20, 1385
    srl x29, x29, x14
    sub x20, x20, x29
    sw x20, 40(x3)
    sw x20, 88(x3)
    or x11, x11, x20
    lw x20, 80(x3)
    srl x30, x30, x20
    sw x30, 88(x3)
    sll x22, x22, x30
    and x11, x11, x22
    or x22, x22, x11
    or x31, x31, x22
    srl x26, x26, x31
    and x18, x18, x26
    sra x19, x19, x18
    sw x19, 92(x3)
    lw x28, 84(x3)
    or x17, x17, x28
    lw x28, 112(x3)
    addi x30, x28, 242
    sra x23, x23, x30
    addi x22, x23, 1656
    srl x17, x17, x22
    sll x28, x28, x17
    and x12, x12, x28
    addi x10, x12, -359
    sll x23, x23, x10
    sw x23, 48(x3)
    srl x30, x30, x23
    lw x23, 4(x3)
    and x22, x22, x23
    sra x30, x30, x22
    sll x19, x19, x30
    and x26, x26, x19
    srl x28, x28, x26
    or x26, x26, x28
    or x12, x12, x26
    or x22, x22, x12
    or x14, x14, x22
    sll x14, x14, x14
    or x10, x10, x14
    sw x10, 116(x3)
    addi x31, x10, 135
    lw x28, 104(x3)
    srl x28, x28, x28
    addi x18, x28, -119
    and x28, x28, x18
    srl x17, x17, x28
    or x27, x27, x17
    srl x24, x24, x27
    addi x17, x24, 1281
    sub x20, x20, x17
    sw x20, 108(x3)
    srl x29, x29, x20
    sra x23, x23, x29
    sll x28, x28, x23
    sll x30, x30, x28
    sub x17, x17, x30
    lw x18, 4(x3)
    sll x29, x29, x18
    srl x12, x12, x29
    sw x12, 76(x3)
    xor x22, x22, x12
    xor x26, x26, x22
    sw x26, 68(x3)
    addi x28, x26, -1559
    lw x31, 72(x3)
    sub x16, x16, x31
    lw x22, 56(x3)
    sll x22, x22, x22
    sw x22, 116(x3)
    sw x22, 24(x3)
    sub x12, x12, x22
    or x25, x25, x12
    and x23, x23, x25
    sub x30, x30, x23
    lw x18, 84(x3)
    xor x21, x21, x18
    sub x17, x17, x21
    srl x23, x23, x17
    sra x23, x23, x23
    sub x28, x28, x23
    lw x11, 116(x3)
    and x26, x26, x11
    addi x17, x26, -938
    sll x23, x23, x17
    addi x24, x23, 872
    sll x15, x15, x24
    sw x15, 36(x3)
    or x10, x10, x15
    sra x25, x25, x10
    xor x11, x11, x25
    lw x26, 44(x3)
    sll x14, x14, x26
    sub x24, x24, x14
    sub x28, x28, x24
    lw x22, 40(x3)
    or x25, x25, x22
    lw x25, 56(x3)
    sw x25, 56(x3)
    sw x25, 24(x3)
    srl x28, x28, x25
    addi x18, x28, 397
    xor x13, x13, x18
    sw x13, 32(x3)
    sub x16, x16, x13
    or x15, x15, x16
    lw x16, 124(x3)
    lw x19, 116(x3)
    sll x13, x13, x19
    and x31, x31, x13
    lw x29, 40(x3)
    addi x16, x29, -595
    xor x28, x28, x16
    sll x15, x15, x28
    sra x18, x18, x15
    srl x25, x25, x18
    sll x30, x30, x25
    sll x14, x14, x30
    and x20, x20, x14
    or x25, x25, x20
    sll x15, x15, x25
    sra x22, x22, x15
    xor x28, x28, x22
    sub x17, x17, x28
    sll x19, x19, x17
    lw x19, 64(x3)
    sll x30, x30, x19
    addi x23, x30, 11
    srl x23, x23, x23
    or x19, x19, x23
    srl x26, x26, x19
    addi x29, x26, 1466
    sw x29, 88(x3)
    lw x26, 20(x3)
    or x16, x16, x26
    lw x30, 92(x3)
    sw x30, 0(x3)
    srl x16, x16, x30
    lw x28, 64(x3)
    and x29, x29, x28
    and x18, x18, x29
    sw x18, 52(x3)
    and x28, x28, x18
    xor x15, x15, x28
    sub x29, x29, x15
    or x26, x26, x29
    lw x20, 0(x3)
    srl x30, x30, x20
    and x16, x16, x30
    and x28, x28, x16
    sll x16, x16, x28
    sw x16, 12(x3)
    sll x16, x16, x16
    sub x29, x29, x16
    and x10, x10, x29
    srl x23, x23, x10
    sw x23, 44(x3)
    sub x28, x28, x23
    sw x28, 52(x3)
    and x26, x26, x28
    xor x31, x31, x26
    srl x11, x11, x31
    sub x17, x17, x11
    srl x31, x31, x17
    sll x19, x19, x31
    sra x10, x10, x19
    sub x16, x16, x10
    lw x31, 8(x3)
    srl x29, x29, x31
    lw x14, 0(x3)
    or x10, x10, x14
    and x25, x25, x10
    or x27, x27, x25
    sra x24, x24, x27
    xor x31, x31, x24
    sw x31, 96(x3)
    xor x15, x15, x31
    sll x30, x30, x15
    sra x17, x17, x30
    sra x14, x14, x17
    and x18, x18, x14
    srl x22, x22, x18
    and x12, x12, x22
    sw x12, 112(x3)
    srl x27, x27, x12
    addi x13, x27, 1749
    sw x13, 76(x3)
    sra x18, x18, x13
    xor x20, x20, x18
    lw x21, 124(x3)
    addi x31, x21, 1227
    and x25, x25, x31
    srl x28, x28, x25
    sll x25, x25, x28
    sll x21, x21, x25
    srl x13, x13, x21
    srl x31, x31, x13
    sub x17, x17, x31
    sub x22, x22, x17
    sub x19, x19, x22
    addi x27, x19, -1808
    lw x24, 80(x3)
    srl x13, x13, x24
    srl x20, x20, x13
    lw x21, 24(x3)
    srl x17, x17, x21
    sub x14, x14, x17
    sub x28, x28, x14
    sw x28, 64(x3)
    xor x19, x19, x28
    xor x24, x24, x19
    addi x18, x24, -1437
    and x26, x26, x18
    sub x22, x22, x26
    and x21, x21, x22
    sw x21, 52(x3)
    addi x13, x21, -654
    sra x24, x24, x13
    sra x24, x24, x24
    and x27, x27, x24
    sub x15, x15, x27
    lw x18, 4(x3)
    sw x18, 36(x3)
    sw x18, 100(x3)
    sra x21, x21, x18
    xor x23, x23, x21
    sra x16, x16, x23
    or x28, x28, x16
    sra x15, x15, x28
    sub x16, x16, x15
    sw x16, 68(x3)
    lw x30, 100(x3)
    addi x11, x30, -1079
    xor x21, x21, x11
    xor x30, x30, x21
    or x17, x17, x30
    srl x29, x29, x17
    xor x11, x11, x29
    xor x21, x21, x11
    lw x20, 56(x3)
    lw x26, 100(x3)
    sub x16, x16, x26
    sra x18, x18, x16
    sub x23, x23, x18
    xor x27, x27, x23
    srl x17, x17, x27
    addi x22, x17, 573
    lw x29, 48(x3)
    sub x11, x11, x29
    lw x17, 72(x3)
    sll x11, x11, x17
    xor x27, x27, x11
    xor x15, x15, x27
    lw x11, 56(x3)
    sra x11, x11, x11
    addi x14, x11, 800
    sra x27, x27, x14
    sw x27, 44(x3)
    sw x27, 16(x3)
    sra x15, x15, x27
    sub x28, x28, x15
    xor x10, x10, x28
    or x13, x13, x10
    xor x20, x20, x13
    xor x17, x17, x20
    sll x15, x15, x17
    lw x31, 108(x3)
    or x20, x20, x31
    sra x19, x19, x20
    addi x18, x19, -809
    sw x18, 88(x3)
    sw x18, 20(x3)
    or x20, x20, x18
    sub x26, x26, x20
    xor x10, x10, x26
    sw x10, 64(x3)
    sub x28, x28, x10
    srl x20, x20, x28
    srl x22, x22, x20
    sw x22, 120(x3)
    xor x28, x28, x22
    sll x25, x25, x28
    sll x14, x14, x25
    or x16, x16, x14
    and x13, x13, x16
    or x20, x20, x13
    sub x31, x31, x20
    sra x27, x27, x31
    or x16, x16, x27
    sw x16, 76(x3)
    addi x25, x16, -417
    or x12, x12, x25
    srl x28, x28, x12
    sub x21, x21, x28
    sll x22, x22, x21
    or x13, x13, x22
    addi x16, x13, 784
    lw x21, 80(x3)
    addi x12, x21, 346
    addi x11, x12, -1461
    srl x12, x12, x11
    sll x20, x20, x12
    sra x18, x18, x20
    srl x16, x16, x18
    xor x10, x10, x16
    lw x27, 4(x3)
    and x18, x18, x27
    sw x18, 20(x3)
    xor x27, x27, x18
    srl x28, x28, x27
    sll x30, x30, x28
    and x17, x17, x30
    lw x17, 60(x3)
    srl x15, x15, x17
    sw x15, 68(x3)
    sub x19, x19, x15
    addi x29, x19, -1475
    xor x29, x29, x29
    sub x12, x12, x29
    xor x24, x24, x12
    xor x20, x20, x24
    sll x26, x26, x20
    sw x26, 92(x3)
    srl x11, x11, x26
    or x15, x15, x11
    and x20, x20, x15
    sra x19, x19, x20
    sra x11, x11, x19
    lw x18, 12(x3)
    sra x27, x27, x18
    addi x31, x27, -1712
    sw x31, 80(x3)
    lw x25, 112(x3)
    srl x15, x15, x25
    or x15, x15, x15
    xor x20, x20, x15
    sub x22, x22, x20
    sra x27, x27, x22
    sw x27, 80(x3)
    sll x23, x23, x27
    and x30, x30, x23
    addi x16, x30, -1712
    sw x16, 24(x3)
    and x26, x26, x16
    sw x26, 16(x3)
    addi x23, x26, 1509
    and x31, x31, x23
    srl x31, x31, x31
    xor x18, x18, x31
    sw x18, 68(x3)
    lw x28, 108(x3)
    sra x20, x20, x28
    lw x11, 16(x3)
    srl x14, x14, x11
    srl x22, x22, x14
    xor x21, x21, x22
    lw x11, 12(x3)
    sll x31, x31, x11
    srl x25, x25, x31
    sw x25, 4(x3)
    and x25, x25, x25
    sra x29, x29, x25
    srl x13, x13, x29
    or x19, x19, x13
    and x24, x24, x19
    xor x24, x24, x24
    xor x25, x25, x24
    xor x25, x25, x25
    lw x23, 8(x3)
    xor x30, x30, x23
    or x18, x18, x30
    and x23, x23, x18
    sra x26, x26, x23
    lw x17, 32(x3)
    sra x20, x20, x17
    or x15, x15, x20
    srl x13, x13, x15
    sra x11, x11, x13
    sw x11, 32(x3)
    sll x12, x12, x11
    sll x22, x22, x12
    srl x14, x14, x22
    sw x14, 120(x3)
    or x16, x16, x14
    or x22, x22, x16
    addi x12, x22, 1614
    sw x12, 36(x3)
    and x25, x25, x12
    sll x21, x21, x25
    xor x14, x14, x21
    addi x24, x14, 1276
    addi x19, x24, -40
    lw x30, 28(x3)
    addi x11, x30, -1964
    sw x11, 44(x3)
    sll x16, x16, x11
    sub x18, x18, x16
    sw x18, 116(x3)
    lw x12, 108(x3)
    srl x26, x26, x12
    xor x27, x27, x26
    or x10, x10, x27
    sub x18, x18, x10
    srl x29, x29, x18
    and x10, x10, x29
    addi x22, x10, -2025
    sll x25, x25, x22
    sll x21, x21, x25
    lw x23, 60(x3)
    sw x23, 84(x3)
    lw x16, 68(x3)
    srl x25, x25, x16
    lw x24, 76(x3)
    sll x15, x15, x24
    xor x21, x21, x15
    or x21, x21, x21
    srl x16, x16, x21
    and x17, x17, x16
    lw x16, 32(x3)
    lw x18, 88(x3)
    srl x26, x26, x18
    srl x14, x14, x26
    xor x16, x16, x14
    sw x16, 52(x3)
    sw x16, 0(x3)
    sw x16, 20(x3)
    sra x15, x15, x16
    srl x31, x31, x15
    or x23, x23, x31
    sll x10, x10, x23
    sub x18, x18, x10
    or x30, x30, x18
    and x11, x11, x30
    or x21, x21, x11
    sub x16, x16, x21
    xor x21, x21, x16
    sub x14, x14, x21
    and x31, x31, x14
    sra x24, x24, x31
    addi x14, x24, 70
    addi x15, x14, -843
    lw x10, 48(x3)
    sub x22, x22, x10
    sll x10, x10, x22
    sw x10, 60(x3)
    sra x17, x17, x10
    addi x28, x17, -1511
    sra x11, x11, x28
    sw x11, 48(x3)
    sw x11, 84(x3)
    lw x12, 108(x3)
    sub x19, x19, x12
    addi x21, x19, -1052
    sra x15, x15, x21
    srl x19, x19, x15
    lw x23, 4(x3)
    sw x23, 52(x3)
    sll x16, x16, x23
    addi x29, x16, 1730
    or x15, x15, x29
    srl x31, x31, x15
    addi x28, x31, 780
    addi x23, x28, 874
    xor x25, x25, x23
    sub x21, x21, x25
    xor x22, x22, x21
    lw x29, 32(x3)
    addi x15, x29, -70
    sw x15, 80(x3)
    sub x29, x29, x15
    addi x29, x29, -1565
    and x25, x25, x29
    addi x20, x25, 1844
    addi x17, x20, -1842
    srl x16, x16, x17
    sll x30, x30, x16
    or x11, x11, x30
    sub x16, x16, x11
    srl x25, x25, x16
    or x20, x20, x25
    sw x20, 108(x3)
    sub x24, x24, x20
    and x27, x27, x24
    addi x20, x27, 1081
    srl x31, x31, x20
    addi x29, x31, -132
    addi x14, x29, 1358
    sub x30, x30, x14
    lw x19, 20(x3)
    addi x15, x19, -457
    sra x20, x20, x15
    xor x26, x26, x20
    addi x15, x26, 176
    addi x26, x15, -1631
    and x17, x17, x26
    sra x14, x14, x17
    and x16, x16, x14
    sra x21, x21, x16
    srl x31, x31, x21
    lw x11, 104(x3)
    addi x29, x11, -2017
    lw x28, 100(x3)
    sll x22, x22, x28
    srl x25, x25, x22
    or x27, x27, x25
    sll x18, x18, x27
    sub x14, x14, x18
    sw x14, 120(x3)
    srl x10, x10, x14
    sw x10, 20(x3)
    xor x11, x11, x10
    lw x17, 0(x3)
    sra x22, x22, x17
    or x15, x15, x22
    addi x19, x15, 132
    lw x22, 16(x3)
    or x20, x20, x22
    addi x25, x20, -930
    or x27, x27, x25
    sra x21, x21, x27
    or x22, x22, x21
    lw x30, 8(x3)
    lw x17, 8(x3)
    or x23, x23, x17
    sra x14, x14, x23
    lw x23, 116(x3)
    lw x27, 112(x3)
    addi x15, x27, -284
    addi x16, x15, -107
    sll x19, x19, x16
    sw x19, 52(x3)
    xor x22, x22, x19
    or x31, x31, x22
    sw x31, 12(x3)
    addi x22, x31, 993
    sra x29, x29, x22
    sub x15, x15, x29
    sw x15, 0(x3)
    lw x11, 36(x3)
    xor x24, x24, x11
    sub x29, x29, x24
    addi x19, x29, 1768
    sra x10, x10, x19
    sll x22, x22, x10
    sub x10, x10, x22
    xor x15, x15, x10
    lw x24, 60(x3)
    and x21, x21, x24
    xor x17, x17, x21
    sra x23, x23, x17
    addi x15, x23, -1013
    or x28, x28, x15
    sll x12, x12, x28
    xor x23, x23, x12
    and x26, x26, x23
    lw x19, 80(x3)
    sw x19, 120(x3)
    lw x16, 16(x3)
    sll x22, x22, x16
    sll x21, x21, x22
    xor x31, x31, x21
    sll x27, x27, x31
    sw x27, 44(x3)
    srl x29, x29, x27
    and x11, x11, x29
    sll x21, x21, x11
    xor x23, x23, x21
    lw x30, 112(x3)
    addi x22, x30, 724
    sub x30, x30, x22
    xor x13, x13, x30
    lw x14, 0(x3)
    sra x29, x29, x14
    sub x17, x17, x29
    sra x13, x13, x17
    and x31, x31, x13
    or x13, x13, x31
    sub x13, x13, x13
    xor x23, x23, x13
    addi x27, x23, 1442
    addi x19, x27, 1548
    sra x15, x15, x19
    xor x24, x24, x15
    addi x10, x24, 1504
    and x29, x29, x10
    sra x29, x29, x29
    or x19, x19, x29
    addi x11, x19, 433
    sra x15, x15, x11
    sll x15, x15, x15
    sll x16, x16, x15
    or x12, x12, x16
    lw x13, 64(x3)
    sll x19, x19, x13
    xor x13, x13, x19
    or x27, x27, x13
    addi x21, x27, -214
    or x10, x10, x21
    srl x25, x25, x10
    lw x16, 80(x3)
    and x30, x30, x16
    sub x30, x30, x30
    or x31, x31, x30
    sll x22, x22, x31
    sub x30, x30, x22
    and x21, x21, x30
    sra x16, x16, x21
    srl x10, x10, x16
    and x21, x21, x10
    and x14, x14, x21
    sra x21, x21, x14
    and x26, x26, x21
    xor x25, x25, x26
    sub x10, x10, x25
    sub x13, x13, x10
    or x21, x21, x13
    xor x10, x10, x21
    srl x28, x28, x10
    addi x27, x28, -1112
    xor x11, x11, x27
    sra x11, x11, x11
    or x16, x16, x11
    xor x27, x27, x16
    sw x27, 84(x3)
    sra x16, x16, x27
    or x25, x25, x16
    sra x21, x21, x25
    xor x18, x18, x21
    sw x18, 100(x3)
    sra x31, x31, x18
    xor x20, x20, x31
    addi x22, x20, 1176
    lw x10, 44(x3)
    lw x23, 44(x3)
    sll x25, x25, x23
    sra x21, x21, x25
    and x14, x14, x21
    sra x31, x31, x14
    sll x23, x23, x31
    sub x30, x30, x23
    sw x30, 84(x3)
    lw x18, 72(x3)
    sra x11, x11, x18
    lw x22, 16(x3)
    sll x14, x14, x22
    or x15, x15, x14
    addi x15, x15, 1874
    addi x27, x15, 1819
    sw x27, 48(x3)
    sll x22, x22, x27
    lw x14, 112(x3)
    xor x21, x21, x14
    sra x12, x12, x21
    srl x26, x26, x12
    sw x26, 40(x3)
    srl x31, x31, x26
    sll x31, x31, x31
    sub x25, x25, x31
    sw x25, 84(x3)
    lw x14, 24(x3)
    lw x28, 96(x3)
    sub x29, x29, x28
    sra x28, x28, x29
    addi x18, x28, 20
    or x28, x28, x18
    xor x11, x11, x28
    nop
