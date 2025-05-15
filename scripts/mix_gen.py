# mix_gen.py
import sys
from datetime import datetime
import os

total_instructions = 2000

# 初始化数据
init = [
    # 基本计数器
    "addi x1, x0, 0",      # 主循环计数器
    f"addi x2, x0, {total_instructions}",  # 循环上限
    # 数据区域指针
    "lui  x3, 0x10000",    # 数据区域基地址
    "addi x4, x3, 0",      # 当前数据指针
    # 测试数据
    "addi x5, x0, 0x1234", # 测试数据1
    "addi x6, x0, 0x1002", # 测试数据2
    "addi x7, x0, 0x09DC", # 测试数据3
    "addi x8, x0, 0x00DD", # 测试数据4
    # 临时寄存器
    "addi x9, x0, 0",      # 临时寄存器1
    "addi x10, x0, 0",     # 临时寄存器2
    "addi x11, x0, 0",     # 临时寄存器3
    "addi x12, x0, 0",     # 临时寄存器4
    # 数据区域初始化
    "sw   x5, 0(x4)",      # 存储测试数据1
    "sw   x6, 4(x4)",      # 存储测试数据2
    "sw   x7, 8(x4)",      # 存储测试数据3
    "sw   x8, 12(x4)"      # 存储测试数据4
]

# 测试场景1：算术运算和数据访问
arith_data = [
    "lw   x13, 0(x4)",     # 加载数据
    "addi x13, x13, 1",    # 加1
    "sw   x13, 0(x4)",     # 存储结果
    "lw   x14, 4(x4)",     # 加载数据
    "sub  x14, x14, x13",  # 减法
    "sw   x14, 4(x4)"      # 存储结果
]

# 测试场景2：逻辑运算和分支
logic_branch = [
    "lw   x15, 8(x4)",     # 加载数据
    "andi x15, x15, 0xFF", # 与运算
    "beq  x15, x0, skip_logic",  # 条件分支
    "ori  x15, x15, 0x100",     # 或运算
    "skip_logic:",
    "sw   x15, 8(x4)"      # 存储结果
]

# 测试场景3：移位和数据移动
shift_move = [
    "lw   x16, 12(x4)",    # 加载数据
    "slli x16, x16, 2",    # 逻辑左移
    "sw   x16, 16(x4)",    # 存储结果
    "lw   x17, 16(x4)",    # 加载结果
    "srli x17, x17, 1",    # 逻辑右移
    "sw   x17, 20(x4)"     # 存储结果
]

# 测试场景4：比较和条件存储
compare_store = [
    "lw   x18, 0(x4)",     # 加载数据1
    "lw   x19, 4(x4)",     # 加载数据2
    "blt  x18, x19, store_less",  # 有符号比较
    "sw   x18, 24(x4)",    # 存储较大值
    "jal  x0, skip_store",
    "store_less:",
    "sw   x19, 24(x4)",    # 存储较大值
    "skip_store:"
]

# 测试场景5：复杂数据操作
complex_data = [
    "lw   x20, 8(x4)",     # 加载数据
    "addi x20, x20, 1",    # 加1
    "sw   x20, 28(x4)",    # 存储中间结果
    "lw   x21, 28(x4)",    # 加载中间结果
    "slli x21, x21, 2",    # 左移2位
    "addi x21, x21, 4",    # 加4
    "sw   x21, 32(x4)"     # 存储最终结果
]

# 计算循环次数
loop_count = (total_instructions - len(init) - 1) // (len(arith_data) + len(logic_branch) + len(shift_move) + len(compare_store) + len(complex_data))

# 生成输出文件名，包含时间戳
output_file = os.path.join("public", "test-programs", f"mix_test.s")

# 确保输出目录存在
os.makedirs(os.path.dirname(output_file), exist_ok=True)

# 生成汇编代码
with open(output_file, 'w') as f:
    # 写入文件头注释
    f.write("# Generated mixed instruction test program\n")
    f.write(f"# Generated at: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
    f.write(f"# Total instructions: {total_instructions}\n")
    f.write(f"# Loop count: {loop_count}\n\n")
    
    # 写入数据段
    f.write(".data\n")
    f.write("    .align 4\n")
    f.write("    .space 1024  # 预分配1KB数据空间\n\n")
    
    # 写入代码段
    f.write(".text\n")
    
    # 写入初始化代码
    f.write('\n'.join(init))
    f.write('\n\n')
    
    # 写入主循环
    f.write("loop_mix:\n")
    for _ in range(loop_count):
        # 算术运算和数据访问测试
        for line in arith_data:
            f.write(f"    {line}\n")
        # 逻辑运算和分支测试
        for line in logic_branch:
            f.write(f"    {line}\n")
        # 移位和数据移动测试
        for line in shift_move:
            f.write(f"    {line}\n")
        # 比较和条件存储测试
        for line in compare_store:
            f.write(f"    {line}\n")
        # 复杂数据操作测试
        for line in complex_data:
            f.write(f"    {line}\n")
        
        # 更新计数器
        f.write("    addi x1, x1, 1\n")
        f.write("    beq  x1, x2, end_mix\n")
        f.write("    jal  x0, loop_mix\n\n")
    
    # 写入结束标签
    f.write("end_mix:\n")
    f.write("    nop\n")

print(f"Generated mixed instruction test code has been written to {output_file}")