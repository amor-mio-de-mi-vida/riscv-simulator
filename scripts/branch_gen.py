#!/usr/bin/env python3
import os
import random
from datetime import datetime

def generate_random_branch_instruction(registers, available_labels, current_label_index):
    """生成随机的分支指令，只能跳转到已定义的标签"""
    # 只使用当前标签之前的标签
    valid_labels = available_labels[:current_label_index]
    if not valid_labels:  # 如果是第一个标签，只能跳转到end_program
        valid_labels = ["end_program"]
    
    branch_instructions = [
        # 条件分支指令
        lambda: f"beq x{random.choice(registers)}, x{random.choice(registers)}, {random.choice(valid_labels)}",
        lambda: f"bne x{random.choice(registers)}, x{random.choice(registers)}, {random.choice(valid_labels)}",
        lambda: f"blt x{random.choice(registers)}, x{random.choice(registers)}, {random.choice(valid_labels)}",
        lambda: f"bge x{random.choice(registers)}, x{random.choice(registers)}, {random.choice(valid_labels)}",
        # 无条件跳转
        lambda: f"j {random.choice(valid_labels)}",
        # 函数调用
        lambda: f"jal x{random.choice(registers)}, {random.choice(valid_labels)}",
        lambda: f"jalr x{random.choice(registers)}, x{random.choice(registers)}, {random.randint(-2048, 2047)}"
    ]
    
    return random.choice(branch_instructions)()

def generate_random_compute_instruction(registers):
    """生成随机的计算指令"""
    compute_instructions = [
        lambda: f"add x{random.choice(registers)}, x{random.choice(registers)}, x{random.choice(registers)}",
        lambda: f"sub x{random.choice(registers)}, x{random.choice(registers)}, x{random.choice(registers)}",
        lambda: f"mul x{random.choice(registers)}, x{random.choice(registers)}, x{random.choice(registers)}",
        lambda: f"div x{random.choice(registers)}, x{random.choice(registers)}, x{random.choice(registers)}",
        lambda: f"rem x{random.choice(registers)}, x{random.choice(registers)}, x{random.choice(registers)}",
        lambda: f"addi x{random.choice(registers)}, x{random.choice(registers)}, {random.randint(-2048, 2047)}",
        lambda: f"li x{random.choice(registers)}, {random.randint(-2048, 2047)}"
    ]
    
    return random.choice(compute_instructions)()

def generate_branch_test(total_instructions=1000):
    # 可用的寄存器（避免使用x0）
    registers = list(range(1, 32))
    
    # 预先生成所有标签
    num_labels = total_instructions // 10  # 每10条指令一个标签
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
    
    while current_instruction < total_instructions:
        # 每10条指令添加一个标签
        if current_instruction % 10 == 0 and current_label_index < len(labels) - 1:
            asm_code.append(f"\n{labels[current_label_index]}:")
            current_label_index += 1
        
        # 随机决定是生成分支指令还是计算指令
        if random.random() < 0.4:  # 40%的概率生成分支指令
            instruction = generate_random_branch_instruction(registers, labels, current_label_index)
        else:
            instruction = generate_random_compute_instruction(registers)
        
        asm_code.append(f"    {instruction}")
        current_instruction += 1
        
        # 每100条指令添加一个循环检查
        if current_instruction % 100 == 0:
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