# branch_gen.py
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

# 测试场景1：基本分支指令
basic_branch = [
    "addi x1, x1, 1",      # 增加计数器
    "beq  x1, x2, end_branch",  # 检查是否达到上限
    "bne  x1, x0, loop_branch"  # 继续循环
]

# 测试场景2：条件分支
cond_branch = [
    "addi x6, x6, 1",      # 增加条件分支计数器
    "blt  x6, x3, cond_continue",  # 如果小于10继续
    "bge  x6, x3, cond_reset",     # 如果大于等于10重置
    "cond_continue:",
    "addi x5, x5, 1",      # 增加分支计数器
    "jal  x0, loop_branch",    # 跳回主循环
    "cond_reset:",
    "addi x6, x0, 0",      # 重置条件分支计数器
    "jal  x0, loop_branch"     # 跳回主循环
]

# 测试场景3：无符号比较
unsigned_branch = [
    "addi x7, x7, 1",      # 增加无符号比较计数器
    "bltu x7, x3, unsigned_continue",  # 无符号小于10继续
    "bgeu x7, x3, unsigned_reset",     # 无符号大于等于10重置
    "unsigned_continue:",
    "addi x5, x5, 1",      # 增加分支计数器
    "jal  x0, loop_branch",    # 跳回主循环
    "unsigned_reset:",
    "addi x7, x0, 0",      # 重置无符号比较计数器
    "jal  x0, loop_branch"     # 跳回主循环
]

# 测试场景4：有符号比较
signed_branch = [
    "addi x8, x8, 1",      # 增加有符号比较计数器
    "blt  x8, x4, signed_continue",  # 有符号小于-10继续
    "bge  x8, x4, signed_reset",     # 有符号大于等于-10重置
    "signed_continue:",
    "addi x5, x5, 1",      # 增加分支计数器
    "jal  x0, loop_branch",    # 跳回主循环
    "signed_reset:",
    "addi x8, x0, 0",      # 重置有符号比较计数器
    "jal  x0, loop_branch"     # 跳回主循环
]

# 计算循环次数
loop_count = (total_instructions - len(init) - 1) // (len(basic_branch) + len(cond_branch) + len(unsigned_branch) + len(signed_branch))

# 生成输出文件名，包含时间戳
output_file = os.path.join("public", "test-programs", f"branch_test.s")

# 确保输出目录存在
os.makedirs(os.path.dirname(output_file), exist_ok=True)

# 生成汇编代码
with open(output_file, 'w') as f:
    # 写入文件头注释
    f.write("# Generated branch test program\n")
    f.write(f"# Generated at: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
    f.write(f"# Total instructions: {total_instructions}\n")
    f.write(f"# Loop count: {loop_count}\n\n")
    
    # 写入初始化代码
    f.write('\n'.join(init))
    f.write('\n\n')
    
    # 写入主循环
    f.write("loop_branch:\n")
    for _ in range(loop_count):
        # 基本分支测试
        for line in basic_branch:
            f.write(f"    {line}\n")
        # 条件分支测试
        for line in cond_branch:
            f.write(f"    {line}\n")
        # 无符号比较测试
        for line in unsigned_branch:
            f.write(f"    {line}\n")
        # 有符号比较测试
        for line in signed_branch:
            f.write(f"    {line}\n")
    
    # 写入结束标签
    f.write("end_branch:\n")
    f.write("    nop\n")

print(f"Generated branch test code has been written to {output_file}")