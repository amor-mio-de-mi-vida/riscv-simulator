# arith_gen.py
import sys
from datetime import datetime
import os

total_instructions = 2000

# 初始化数据
init = [
    # 基本计数器
    "addi x1, x0, 0",      # 主循环计数器
    f"addi x2, x0, {total_instructions}",  # 循环上限
    # 测试数据
    "addi x3, x0, 10",     # 正数测试值
    "addi x4, x0, -10",    # 负数测试值
    "addi x5, x0, 0",      # 分支计数器
    "addi x6, x0, 0",      # 条件分支计数器
    "addi x7, x0, 0",      # 无符号比较计数器
    "addi x8, x0, 0",      # 有符号比较计数器
    # 测试用的特殊值
    "lui x9, 0x7FFFF",     # 最大正数的高位
    "addi x9, x9, 0xFFF",  # 最大正数的低位
    "lui x10, 0x80000",    # 最小负数的高位
    "addi x11, x0, -1",    # -1
    "addi x12, x0, 0"      # 0
]

# 测试场景1：基本算术运算
basic_arith = [
    "add  x13, x1, x2",    # 加法
    "sub  x14, x3, x4",    # 减法
    "mul  x15, x13, x14",  # 乘法
    "add  x16, x15, x1",   # 加法
    "sub  x17, x16, x2"    # 减法
]

# 测试场景2：逻辑运算
logic_arith = [
    "and  x18, x13, x14",  # 与运算
    "or   x19, x15, x16",  # 或运算
    "xor  x20, x17, x18",  # 异或运算
    "andi x21, x19, 0xFF", # 立即数与运算
    "ori  x22, x20, 0x0F", # 立即数或运算
    "xori x23, x21, 0x55"  # 立即数异或运算
]

# 测试场景3：移位操作
shift_arith = [
    "sll  x24, x22, x23",  # 逻辑左移
    "srl  x25, x24, x1",   # 逻辑右移
    "sra  x26, x25, x2",   # 算术右移
    "slli x27, x26, 2",    # 立即数逻辑左移
    "srli x28, x27, 3",    # 立即数逻辑右移
    "srai x29, x28, 4"     # 立即数算术右移
]

# 测试场景4：比较操作
compare_arith = [
    "slt  x30, x29, x30",  # 有符号小于
    "sltu x31, x30, x31",  # 无符号小于
    "slti x1, x1, 100",    # 立即数有符号小于
    "sltiu x2, x2, 1000"   # 立即数无符号小于
]

# 计算循环次数
loop_count = (total_instructions - len(init) - 1) // (len(basic_arith) + len(logic_arith) + len(shift_arith) + len(compare_arith))

# 生成输出文件名，包含时间戳
output_file = os.path.join("public", "test-programs", f"arith_test.s")

# 确保输出目录存在
os.makedirs(os.path.dirname(output_file), exist_ok=True)

# 生成汇编代码
with open(output_file, 'w') as f:
    # 写入文件头注释
    f.write("# Generated arithmetic test program\n")
    f.write(f"# Generated at: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
    f.write(f"# Total instructions: {total_instructions}\n")
    f.write(f"# Loop count: {loop_count}\n\n")
    
    # 写入初始化代码
    f.write('\n'.join(init))
    f.write('\n\n')
    
    # 写入主循环
    f.write("loop_arith:\n")
    for _ in range(loop_count):
        # 基本算术运算测试
        for line in basic_arith:
            f.write(f"    {line}\n")
        # 逻辑运算测试
        for line in logic_arith:
            f.write(f"    {line}\n")
        # 移位操作测试
        for line in shift_arith:
            f.write(f"    {line}\n")
        # 比较操作测试
        for line in compare_arith:
            f.write(f"    {line}\n")
    
    # 写入结束标签
    f.write("end_arith:\n")
    f.write("    nop\n")

print(f"Generated arithmetic test code has been written to {output_file}")