# data_gen.py
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

# 测试场景1：基本加载指令
basic_load = [
    "lw   x13, 0(x4)",     # 加载字
    "lh   x14, 2(x4)",     # 加载半字
    "lb   x15, 1(x4)",     # 加载字节
    "lhu  x16, 4(x4)",     # 无符号加载半字
    "lbu  x17, 5(x4)"      # 无符号加载字节
]

# 测试场景2：基本存储指令
basic_store = [
    "sw   x13, 16(x4)",    # 存储字
    "sh   x14, 20(x4)",    # 存储半字
    "sb   x15, 21(x4)",    # 存储字节
    "sw   x16, 24(x4)",    # 存储字
    "sh   x17, 28(x4)"     # 存储半字
]

# 测试场景3：带偏移的加载
offset_load = [
    "lw   x18, 0(x4)",     # 加载字（偏移0）
    "lw   x19, 4(x4)",     # 加载字（偏移4）
    "lw   x20, 8(x4)",     # 加载字（偏移8）
    "lw   x21, 12(x4)",    # 加载字（偏移12）
    "lw   x22, 16(x4)"     # 加载字（偏移16）
]

# 测试场景4：带偏移的存储
offset_store = [
    "sw   x18, 32(x4)",    # 存储字（偏移32）
    "sw   x19, 36(x4)",    # 存储字（偏移36）
    "sw   x20, 40(x4)",    # 存储字（偏移40）
    "sw   x21, 44(x4)",    # 存储字（偏移44）
    "sw   x22, 48(x4)"     # 存储字（偏移48）
]

# 测试场景5：数据移动和更新
data_move = [
    "lw   x23, 0(x4)",     # 加载数据
    "addi x23, x23, 1",    # 更新数据
    "sw   x23, 0(x4)",     # 存储更新后的数据
    "lw   x24, 4(x4)",     # 加载数据
    "addi x24, x24, 2",    # 更新数据
    "sw   x24, 4(x4)"      # 存储更新后的数据
]

# 计算循环次数
loop_count = (total_instructions - len(init) - 1) // (len(basic_load) + len(basic_store) + len(offset_load) + len(offset_store) + len(data_move))

# 生成输出文件名，包含时间戳
output_file = os.path.join("public", "test-programs", f"data_test.s")

# 确保输出目录存在
os.makedirs(os.path.dirname(output_file), exist_ok=True)

# 生成汇编代码
with open(output_file, 'w') as f:
    # 写入文件头注释
    f.write("# Generated data access test program\n")
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
    f.write("loop_data:\n")
    for _ in range(loop_count):
        # 基本加载测试
        for line in basic_load:
            f.write(f"    {line}\n")
        # 基本存储测试
        for line in basic_store:
            f.write(f"    {line}\n")
        # 带偏移的加载测试
        for line in offset_load:
            f.write(f"    {line}\n")
        # 带偏移的存储测试
        for line in offset_store:
            f.write(f"    {line}\n")
        # 数据移动和更新测试
        for line in data_move:
            f.write(f"    {line}\n")
        
        # 更新计数器
        f.write("    addi x1, x1, 1\n")
        f.write("    beq  x1, x2, end_data\n")
        f.write("    jal  x0, loop_data\n\n")
    
    # 写入结束标签
    f.write("end_data:\n")
    f.write("    nop\n")

print(f"Generated data access test code has been written to {output_file}")