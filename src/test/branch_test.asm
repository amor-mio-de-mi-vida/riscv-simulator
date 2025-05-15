# 分支密集型测试程序
# 执行大量条件分支和跳转指令

.text
    # 初始化寄存器
    li x1, 1      # 计数器
    li x2, 5    # 目标值
    li x3, 0      # 结果寄存器
    li x4, 0      # 临时寄存器1
    li x5, 0      # 临时寄存器2

loop:
    # 执行一系列条件分支（每次循环20条指令）
    beq x1, x2, end    # 如果x1 == x2，跳转到end
    bne x1, x2, next1  # 如果x1 != x2，跳转到next1
    j end              # 无条件跳转到end

next1:
    blt x1, x2, next2  # 如果x1 < x2，跳转到next2
    bge x1, x2, end    # 如果x1 >= x2，跳转到end
    j end              # 无条件跳转到end

next2:
    beq x3, x4, next3  # 如果x3 == x4，跳转到next3
    bne x3, x4, next4  # 如果x3 != x4，跳转到next4
    j next3            # 无条件跳转到next3

next3:
    blt x3, x4, next4  # 如果x3 < x4，跳转到next4
    bge x3, x4, next5  # 如果x3 >= x4，跳转到next5
    j next4            # 无条件跳转到next4

next4:
    beq x4, x5, next5  # 如果x4 == x5，跳转到next5
    bne x4, x5, next6  # 如果x4 != x5，跳转到next6
    j next5            # 无条件跳转到next5

next5:
    blt x4, x5, next6  # 如果x4 < x5，跳转到next6
    bge x4, x5, next7  # 如果x4 >= x5，跳转到next7
    j next6            # 无条件跳转到next6

next6:
    beq x5, x1, next7  # 如果x5 == x1，跳转到next7
    bne x5, x1, next8  # 如果x5 != x1，跳转到next8
    j next7            # 无条件跳转到next7

next7:
    blt x5, x1, next8  # 如果x5 < x1，跳转到next8
    bge x5, x1, next9  # 如果x5 >= x1，跳转到next9
    j next8            # 无条件跳转到next8

next8:
    # 增加计数器和临时寄存器
    addi x1, x1, 1
    addi x3, x3, 1
    addi x4, x4, 1
    addi x5, x5, 1
    j loop             # 跳回循环开始

next9:
    j end              # 无条件跳转到end

end:
    # 程序结束
    ebreak 