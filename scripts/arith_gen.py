# arith_gen.py
import sys
import os
import random
from datetime import datetime

# 1. 支持命令行参数控制指令数量
total_instructions = int(sys.argv[1]) if len(sys.argv) > 1 else 2000

output_file = os.path.join("public", "test-programs", f"arith_test.s")
os.makedirs(os.path.dirname(output_file), exist_ok=True)

# 可用寄存器池（避免x0/x1/x2等特殊寄存器）
reg_pool = [f"x{i}" for i in range(10, 32)]

ops = [
    # 算术型
    ("add",  "{dst}, {dst}, {src}"),
    ("sub",  "{dst}, {dst}, {src}"),
    ("mul",  "{dst}, {dst}, {src}"),
    ("addi", "{dst}, {src}, {imm}"),
    # 逻辑型
    ("and",  "{dst}, {dst}, {src}"),
    ("or",   "{dst}, {dst}, {src}"),
    ("xor",  "{dst}, {dst}, {src}"),
    ("andi", "{dst}, {src}, {imm}"),
    ("ori",  "{dst}, {src}, {imm}"),
    ("xori", "{dst}, {src}, {imm}"),
    # 移位型
    ("sll",  "{dst}, {dst}, {src}"),
    ("srl",  "{dst}, {dst}, {src}"),
    ("sra",  "{dst}, {dst}, {src}"),
    ("slli", "{dst}, {src}, {imm}"),
    ("srli", "{dst}, {src}, {imm}"),
    ("srai", "{dst}, {src}, {imm}"),
    # 比较型
    ("slt",  "{dst}, {dst}, {src}"),
    ("sltu", "{dst}, {dst}, {src}"),
    ("slti", "{dst}, {src}, {imm}"),
    ("sltiu", "{dst}, {src}, {imm}"),
]

def random_reg(exclude=None):
    pool = [r for r in reg_pool if r != exclude]
    return random.choice(pool)

def random_imm():
    return random.randint(-2048, 2047)

with open(output_file, 'w') as f:
    f.write("# Randomized arithmetic hazard test program\n")
    f.write(f"# Generated at: {datetime.now()}\n")
    f.write(f"# Total instructions: {total_instructions}\n\n")
    f.write(".text\n")

    # 初始化部分寄存器
    for i, reg in enumerate(reg_pool[:4]):
        f.write(f"    addi {reg}, x0, {random_imm()}\n")
    f.write("\n")

    last_dst = random_reg()
    for i in range(total_instructions):
        op, fmt = random.choice(ops)
        if op in ["addi", "andi", "ori", "xori", "slti", "sltiu", "slli", "srli", "srai"]:
            dst = last_dst  # 强制WAW
            src = random_reg(exclude=dst)  # 强制RAW
            line = f"{op} {dst}, {src}, {random_imm()}"
            last_dst = dst
        else:
            dst = last_dst  # 强制WAW
            src = random_reg(exclude=dst)  # 强制RAW
            line = f"{op} {dst}, {dst}, {src}"
            last_dst = dst
        f.write(f"    {line}\n")

    f.write("    nop\n")

print(f"Generated arithmetic hazard test code has been written to {output_file}")