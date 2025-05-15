# 计算密集型测试程序
# 执行大量算术运算指令

.text
    # 初始化寄存器
    li x1, 1      # 计数器
    li x2, 5    # 目标值
    li x3, 0      # 结果寄存器
    li x4, 0      # 临时寄存器1
    li x5, 0      # 临时寄存器2

loop:
    # 执行一系列算术运算（每次循环20条指令）
    add x3, x3, x1    # x3 = x3 + x1
    mul x3, x3, x1    # x3 = x3 * x1
    sub x3, x3, x1    # x3 = x3 - x1
    div x3, x3, x1    # x3 = x3 / x1
    rem x3, x3, x1    # x3 = x3 % x1
    
    add x4, x4, x1    # x4 = x4 + x1
    mul x4, x4, x1    # x4 = x4 * x1
    sub x4, x4, x1    # x4 = x4 - x1
    div x4, x4, x1    # x4 = x4 / x1
    rem x4, x4, x1    # x4 = x4 % x1
    
    add x5, x5, x1    # x5 = x5 + x1
    mul x5, x5, x1    # x5 = x5 * x1
    sub x5, x5, x1    # x5 = x5 - x1
    div x5, x5, x1    # x5 = x5 / x1
    rem x5, x5, x1    # x5 = x5 % x1
    
    add x3, x3, x4    # x3 = x3 + x4
    add x3, x3, x5    # x3 = x3 + x5
    mul x3, x3, x1    # x3 = x3 * x1
    div x3, x3, x1    # x3 = x3 / x1
    rem x3, x3, x1    # x3 = x3 % x1
    
    # 增加计数器
    addi x1, x1, 1
    
    # 检查是否达到目标值
    bne x1, x2, loop
    
    # 程序结束
    ebreak 