# mix_gen.py
import sys
import os
import random
from datetime import datetime

# 1. 支持命令行参数控制指令数量
total_instructions = int(sys.argv[1]) if len(sys.argv) > 1 else 2000

output_file = os.path.join("public", "test-programs", f"mix_test.s")
os.makedirs(os.path.dirname(output_file), exist_ok=True)

# 可用寄存器池（避免x0/x1/x2等特殊寄存器）
reg_pool = [f"x{i}" for i in range(10, 32)]
mem_base = "x3"  # 假设x3为基址
mem_offsets = [i*4 for i in range(0, 32)]

def get_valid_jump_targets(current_pos, label_positions, labels, max_jump_distance=100):
    """获取有效的跳转目标，确保跳转距离在合理范围内"""
    valid_targets = []
    for i, pos in enumerate(label_positions):
        # 只允许向前跳转，且跳转距离不超过max_jump_distance
        if pos > current_pos and (pos - current_pos) <= max_jump_distance:
            valid_targets.append((pos, labels[i]))
    return valid_targets

# 减少分支指令的权重
ops = [
    # 算术型 (权重: 40%)
    ("add",  "{dst}, {dst}, {src}"),
    ("sub",  "{dst}, {dst}, {src}"),
    ("mul",  "{dst}, {dst}, {src}"),
    ("addi", "{dst}, {src}, {imm}"),
    # 逻辑型 (权重: 30%)
    ("and",  "{dst}, {dst}, {src}"),
    ("or",   "{dst}, {dst}, {src}"),
    ("xor",  "{dst}, {dst}, {src}"),
    ("andi", "{dst}, {src}, {imm}"),
    ("ori",  "{dst}, {src}, {imm}"),
    ("xori", "{dst}, {src}, {imm}"),
    # 移位型 (权重: 20%)
    ("sll",  "{dst}, {dst}, {src}"),
    ("srl",  "{dst}, {dst}, {src}"),
    ("sra",  "{dst}, {dst}, {src}"),
    ("slli", "{dst}, {src}, {imm}"),
    ("srli", "{dst}, {src}, {imm}"),
    ("srai", "{dst}, {src}, {imm}"),
    # 比较型 (权重: 5%)
    ("slt",  "{dst}, {dst}, {src}"),
    ("sltu", "{dst}, {dst}, {src}"),
    ("slti", "{dst}, {src}, {imm}"),
    ("sltiu", "{dst}, {src}, {imm}"),
    # 访存型 (权重: 3%)
    ("lw",   "{dst}, {offset}({base})"),
    ("sw",   "{src}, {offset}({base})"),
    # 分支型 (权重: 2%)
    ("beq",  "{src1}, {src2}, {label}"),
    ("bne",  "{src1}, {src2}, {label}"),
    ("blt",  "{src1}, {src2}, {label}"),
    ("bge",  "{src1}, {src2}, {label}"),
    ("bltu", "{src1}, {src2}, {label}"),
    ("bgeu", "{src1}, {src2}, {label}"),
    ("jal",  "{dst}, {label}"),
    ("jalr", "{dst}, {src}, {imm}"),
]

# 为不同类型的指令设置权重
op_weights = {
    "add": 10, "sub": 10, "mul": 10, "addi": 10,  # 算术型
    "and": 6, "or": 6, "xor": 6, "andi": 6, "ori": 6, "xori": 6,  # 逻辑型
    "sll": 4, "srl": 4, "sra": 4, "slli": 4, "srli": 4, "srai": 4,  # 移位型
    "slt": 1, "sltu": 1, "slti": 1, "sltiu": 1,  # 比较型
    "lw": 1, "sw": 1,  # 访存型
    "beq": 1, "bne": 1, "blt": 1, "bge": 1, "bltu": 1, "bgeu": 1, "jal": 1, "jalr": 1  # 分支型
}

def random_reg(exclude=None):
    pool = [r for r in reg_pool if r != exclude]
    return random.choice(pool)

def random_offset():
    return random.choice(mem_offsets)

def random_imm():
    return random.randint(-2048, 2047)

def weighted_choice(choices, weights):
    total = sum(weights)
    r = random.uniform(0, total)
    upto = 0
    for c, w in zip(choices, weights):
        if upto + w >= r:
            return c
        upto += w
    return choices[-1]

with open(output_file, 'w') as f:
    f.write("# Randomized mixed hazard test program\n")
    f.write(f"# Generated at: {datetime.now()}\n")
    f.write(f"# Total instructions: {total_instructions}\n\n")
    f.write(".data\n    .align 4\n    .space 1024\n\n.text\n")

    # 初始化基址寄存器和部分数据寄存器
    f.write("    lui x3, 0x10000\n")
    for i, reg in enumerate(reg_pool[:4]):
        f.write(f"    addi {reg}, x0, {random_imm()}\n")
    f.write("\n")

    # 预生成标签位置，确保标签分布更均匀
    num_labels = total_instructions // 20  # 每20条指令一个标签
    label_positions = []
    for i in range(num_labels):
        # 确保标签位置在合理范围内
        start = i * 20
        end = min((i + 1) * 20, total_instructions - 10)  # 留出足够的空间给后续指令
        pos = random.randint(start, end)
        label_positions.append(pos)
    label_positions.sort()
    
    # 生成标签
    labels = [f"label_{i}" for i in range(num_labels)]
    labels.append("end_program")  # 添加结束标签

    last_dst = random_reg()
    branch_count = 0
    current_label = 0
    
    for i in range(total_instructions):
        # 在预定义的位置添加标签
        if current_label < len(label_positions) and i == label_positions[current_label]:
            f.write(f"\n{labels[current_label]}:\n")
            current_label += 1

        # 根据权重选择指令
        op, fmt = weighted_choice(ops, [op_weights[op] for op, _ in ops])
        
        if op in ["lw", "sw"]:
            if op == "lw":
                dst = last_dst  # 强制WAW
                line = f"lw {dst}, {random_offset()}({mem_base})"
            else:
                src = last_dst  # 强制RAW
                line = f"sw {src}, {random_offset()}({mem_base})"
            last_dst = dst if op == "lw" else last_dst
        elif op in ["addi", "andi", "ori", "xori", "slti", "sltiu", "slli", "srli", "srai", "jalr"]:
            dst = last_dst  # 强制WAW
            src = random_reg(exclude=dst)  # 强制RAW
            if op == "jalr":
                # 对于jalr，使用较小的立即数偏移
                imm = random.randint(-128, 127)
            else:
                imm = random_imm()
            line = f"{op} {dst}, {src}, {imm}"
            last_dst = dst
        elif op in ["beq", "bne", "blt", "bge", "bltu", "bgeu"]:
            # 每50条指令最多生成一个分支
            if branch_count >= total_instructions // 50:
                continue
                
            # 获取有效的跳转目标
            valid_targets = get_valid_jump_targets(i, label_positions, labels)
            if not valid_targets:  # 如果没有有效的跳转目标，跳转到end_program
                valid_targets = [(len(label_positions), "end_program")]
            
            # 随机选择一个有效的跳转目标
            target_pos, target_label = random.choice(valid_targets)
            
            src1 = last_dst  # 强制RAW
            src2 = random_reg(exclude=src1)
            line = f"{op} {src1}, {src2}, {target_label}"
            f.write(f"    {line}\n")
            branch_count += 1
            continue
        elif op == "jal":
            # 每100条指令最多生成一个跳转
            if branch_count >= total_instructions // 100:
                continue
                
            # 获取有效的跳转目标
            valid_targets = get_valid_jump_targets(i, label_positions, labels)
            if not valid_targets:  # 如果没有有效的跳转目标，跳转到end_program
                valid_targets = [(len(label_positions), "end_program")]
            
            # 随机选择一个有效的跳转目标
            target_pos, target_label = random.choice(valid_targets)
            
            dst = last_dst  # 强制WAW
            line = f"jal {dst}, {target_label}"
            f.write(f"    {line}\n")
            branch_count += 1
            continue
        else:
            dst = last_dst  # 强制WAW
            src = random_reg(exclude=dst)  # 强制RAW
            line = f"{op} {dst}, {dst}, {src}"
            last_dst = dst
        f.write(f"    {line}\n")

    f.write("\nend_program:\n")
    f.write("    nop\n")

print(f"Generated mixed hazard test code has been written to {output_file}")