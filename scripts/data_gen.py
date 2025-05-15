# data_gen.py
import sys
import os
import random
from datetime import datetime

# 1. 支持命令行参数控制指令数量
total_instructions = int(sys.argv[1]) if len(sys.argv) > 1 else 2000

output_file = os.path.join("public", "test-programs", f"data_test.s")
os.makedirs(os.path.dirname(output_file), exist_ok=True)

# 可用寄存器池（避免x0/x1/x2等特殊寄存器）
reg_pool = [f"x{i}" for i in range(10, 32)]
mem_base = "x3"  # 假设x3为基址
mem_offsets = [i*4 for i in range(0, 32)]

ops = [
    # 读写型
    ("lw",  "{dst}, {offset}({base})"),   # RAW
    ("sw",  "{src}, {offset}({base})"),   # WAW/WAR
    # 算术型
    ("addi", "{dst}, {src}, {imm}"),
    ("sub",  "{dst}, {dst}, {src}"),
    ("and",  "{dst}, {dst}, {src}"),
    ("or",   "{dst}, {dst}, {src}"),
    ("xor",  "{dst}, {dst}, {src}"),
    ("sll",  "{dst}, {dst}, {src}"),
    ("srl",  "{dst}, {dst}, {src}"),
    ("sra",  "{dst}, {dst}, {src}"),
]

def random_reg(exclude=None):
    pool = [r for r in reg_pool if r != exclude]
    return random.choice(pool)

def random_offset():
    return random.choice(mem_offsets)

def random_imm():
    return random.randint(-2048, 2047)

with open(output_file, 'w') as f:
    f.write("# Randomized data hazard test program\n")
    f.write(f"# Generated at: {datetime.now()}\n")
    f.write(f"# Total instructions: {total_instructions}\n\n")
    f.write(".data\n    .align 4\n    .space 1024\n\n.text\n")

    # 初始化基址寄存器和部分数据寄存器
    f.write("    lui x3, 0x10000\n")
    for i, reg in enumerate(reg_pool[:4]):
        f.write(f"    addi {reg}, x0, {random.randint(-2048, 2047)}\n")
    f.write("\n")

    last_dst = random_reg()
    for i in range(total_instructions):
        op, fmt = random.choice(ops)
        if op == "lw":
            dst = random_reg()
            line = f"lw {dst}, {random_offset()}({mem_base})"
            last_dst = dst
        elif op == "sw":
            src = last_dst  # 强制数据相关
            line = f"sw {src}, {random_offset()}({mem_base})"
        elif op == "addi":
            dst = random_reg()
            src = last_dst  # 强制RAW
            line = f"addi {dst}, {src}, {random_imm()}"
            last_dst = dst
        else:
            dst = random_reg()
            src = last_dst  # 强制RAW
            line = f"{op} {dst}, {dst}, {src}"
            last_dst = dst
        f.write(f"    {line}\n")

    f.write("    nop\n")

print(f"Generated data hazard test code has been written to {output_file}")