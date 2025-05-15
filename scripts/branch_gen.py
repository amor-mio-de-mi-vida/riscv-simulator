#!/usr/bin/env python3
import os
import random
from datetime import datetime

def get_valid_jump_targets(current_pos, label_positions, labels, max_jump_distance=100):
    """获取有效的跳转目标，确保跳转距离在合理范围内"""
    valid_targets = []
    for i, pos in enumerate(label_positions):
        # 只允许向前跳转，且跳转距离不超过max_jump_distance
        if pos > current_pos and (pos - current_pos) <= max_jump_distance:
            valid_targets.append((pos, labels[i]))
    return valid_targets

def generate_random_branch_instruction(registers, available_labels, current_label_index, last_dst_reg, current_pos, label_positions, labels):
    """生成随机的分支指令，只能跳转到已定义的标签"""
    # 获取有效的跳转目标
    valid_targets = get_valid_jump_targets(current_pos, label_positions, labels)
    if not valid_targets:  # 如果没有有效的跳转目标，跳转到end_program
        valid_targets = [(len(label_positions), "end_program")]
    
    # 随机选择一个有效的跳转目标
    target_pos, target_label = random.choice(valid_targets)
    
    # 增加分支指令的权重，使其更可能使用last_dst_reg
    branch_instructions = [
        # 条件分支指令（使用last_dst_reg作为第一个操作数）
        lambda: f"beq {last_dst_reg}, x{random.choice(registers)}, {target_label}",
        lambda: f"bne {last_dst_reg}, x{random.choice(registers)}, {target_label}",
        lambda: f"blt {last_dst_reg}, x{random.choice(registers)}, {target_label}",
        lambda: f"bge {last_dst_reg}, x{random.choice(registers)}, {target_label}",
        # 无条件跳转
        lambda: f"j {target_label}",
        # 函数调用（使用last_dst_reg作为目标寄存器）
        lambda: f"jal {last_dst_reg}, {target_label}",
        # 对于jalr，使用较小的立即数偏移
        lambda: f"jalr {last_dst_reg}, x{random.choice(registers)}, {random.randint(-128, 127)}"
    ]
    
    return random.choice(branch_instructions)()

def generate_random_compute_instruction(registers, last_dst_reg):
    """生成随机的计算指令，强制使用last_dst_reg作为目标寄存器"""
    compute_instructions = [
        lambda: f"add {last_dst_reg}, {last_dst_reg}, x{random.choice(registers)}",
        lambda: f"sub {last_dst_reg}, {last_dst_reg}, x{random.choice(registers)}",
        lambda: f"mul {last_dst_reg}, {last_dst_reg}, x{random.choice(registers)}",
        lambda: f"div {last_dst_reg}, {last_dst_reg}, x{random.choice(registers)}",
        lambda: f"rem {last_dst_reg}, {last_dst_reg}, x{random.choice(registers)}",
        lambda: f"addi {last_dst_reg}, {last_dst_reg}, {random.randint(-2048, 2047)}",
        lambda: f"li {last_dst_reg}, {random.randint(-2048, 2047)}"
    ]
    
    return random.choice(compute_instructions)()

def generate_branch_test(total_instructions=1000):
    # 可用的寄存器（避免使用x0）
    registers = [f"x{i}" for i in range(1, 32)]
    
    # 预先生成所有标签位置，确保标签分布更均匀
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
    
    # 初始化代码
    asm_code = [".text"]
    asm_code.append("# 初始化寄存器")
    asm_code.append("li x1, 0          # 计数器")
    asm_code.append(f"li x2, {total_instructions}  # 最大指令数")
    asm_code.append("li x3, 1          # 步长")
    
    # 生成随机指令
    current_instruction = 0
    current_label_index = 0
    last_dst_reg = "x10"  # 初始目标寄存器
    
    while current_instruction < total_instructions:
        # 在预定义的位置添加标签
        if current_label_index < len(label_positions) and current_instruction == label_positions[current_label_index]:
            asm_code.append(f"\n{labels[current_label_index]}:")
            current_label_index += 1
        
        # 增加分支指令的概率到60%
        if random.random() < 0.6:  # 60%的概率生成分支指令
            instruction = generate_random_branch_instruction(
                registers, labels, current_label_index, last_dst_reg,
                current_instruction, label_positions, labels
            )
        else:
            instruction = generate_random_compute_instruction(registers, last_dst_reg)
        
        asm_code.append(f"    {instruction}")
        current_instruction += 1
        
        # 每50条指令添加一个循环检查
        if current_instruction % 50 == 0:
            asm_code.append("    addi x1, x1, 1")
            asm_code.append("    beq x1, x2, end_program")
    
    # 添加结束标签和程序结束指令
    asm_code.append("\nend_program:")
    asm_code.append("    ebreak")
    
    return "\n".join(asm_code)

def save_to_file(asm_code, filename):
    # 确保目录存在
    os.makedirs(os.path.dirname(filename), exist_ok=True)
    
    # 计算指令数量
    instruction_count = len([line for line in asm_code.splitlines() if line.strip()])
    
    # 添加生成时间和注释
    header = (
        f"# Generated random branch test program\n"
        f"# Generated at: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n"
        f"# This program contains randomized control hazards and branch instructions\n"
        f"# Total instructions: {instruction_count}\n\n"
    )
    
    # 写入文件
    with open(filename, 'w') as f:
        f.write(header + asm_code)
    
    print(f"Generated branch test code has been written to {filename}")

if __name__ == "__main__":
    import argparse
    
    parser = argparse.ArgumentParser(description='Generate random branch test program')
    parser.add_argument('--instructions', type=int, default=1000,
                      help='Number of instructions to generate (default: 1000)')
    parser.add_argument('--output', type=str, default='branch_test.s',
                      help='Output filename (default: branch_test.s)')
    
    args = parser.parse_args()
    
    asm_code = generate_branch_test(args.instructions)
    output_file = os.path.join("public", "test-programs", args.output)
    save_to_file(asm_code, output_file)