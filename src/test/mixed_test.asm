# 混合型测试程序
# 包含计算、分支和内存操作

.text
    # 初始化寄存器
    li x1, 0      # 内存地址
    li x2, 5    # 目标值
    li x3, 1      # 写入值
    li x4, 0      # 结果寄存器
    li x5, 0      # 临时寄存器1
    li x6, 0      # 临时寄存器2
    li x7, 0      # 临时寄存器3

loop:
    # 计算操作（8条指令）
    add x4, x4, x3    # x4 = x4 + x3
    mul x4, x4, x3    # x4 = x4 * x3
    sub x4, x4, x3    # x4 = x4 - x3
    div x4, x4, x3    # x4 = x4 / x3
    add x5, x5, x3    # x5 = x5 + x3
    mul x5, x5, x3    # x5 = x5 * x3
    add x6, x6, x3    # x6 = x6 + x3
    mul x6, x6, x3    # x6 = x6 * x3
    
    # 内存操作（8条指令）
    sw x4, 0(x1)      # 存储计算结果
    lw x7, 0(x1)      # 加载回寄存器
    sw x5, 4(x1)      # 存储临时结果1
    lw x5, 4(x1)      # 加载回寄存器
    sw x6, 8(x1)      # 存储临时结果2
    lw x6, 8(x1)      # 加载回寄存器
    sb x3, 12(x1)     # 存储字节
    lb x7, 12(x1)     # 加载字节
    
    # 分支操作（4条指令）
    beq x7, x4, next1  # 验证加载的值是否正确
    j error           # 如果不正确，跳转到错误处理

next1:
    blt x5, x6, next2  # 比较两个临时结果
    j error           # 如果不满足条件，跳转到错误处理

next2:
    # 增加地址和值
    addi x1, x1, 16   # 增加内存地址
    addi x3, x3, 1    # 增加写入值
    
    # 检查是否达到目标值
    bne x3, x2, loop
    
    # 程序正常结束
    ebreak

error:
    # 错误处理
    ebreak 