import { describe, it, expect } from 'vitest';
import { Assembler } from '../assembler/assembler';

describe('RISC-V Assembler', () => {
    const assembler = new Assembler();

    it('should assemble basic R-type instructions', () => {
        const code = `
            add x1, x2, x3
            sub x4, x5, x6
            and x7, x8, x9
            or x10, x11, x12
            xor x13, x14, x15
        `;
        const result = assembler.assemble(code);
        expect(result.length).toBe(5);
        expect(result[0].assembly).toBe('add x1, x2, x3');
        expect(result[1].assembly).toBe('sub x4, x5, x6');
        expect(result[2].assembly).toBe('and x7, x8, x9');
        expect(result[3].assembly).toBe('or x10, x11, x12');
        expect(result[4].assembly).toBe('xor x13, x14, x15');
    });

    it('should assemble basic I-type instructions', () => {
        const code = `
            addi x1, x2, 100
            lw x3, 0(x4)
            lb x5, 4(x6)
            lh x7, 8(x8)
        `;
        const result = assembler.assemble(code);
        expect(result.length).toBe(4);
        expect(result[0].assembly).toBe('addi x1, x2, 100');
        expect(result[1].assembly).toBe('lw x3, 0(x4)');
        expect(result[2].assembly).toBe('lb x5, 4(x6)');
        expect(result[3].assembly).toBe('lh x7, 8(x8)');
    });

    it('should assemble basic S-type instructions', () => {
        const code = `
            sw x1, 0(x2)
            sh x3, 4(x4)
            sb x5, 8(x6)
        `;
        const result = assembler.assemble(code);
        expect(result.length).toBe(3);
        expect(result[0].assembly).toBe('sw x1, 0(x2)');
        expect(result[1].assembly).toBe('sh x3, 4(x4)');
        expect(result[2].assembly).toBe('sb x5, 8(x6)');
    });

    it('should assemble basic B-type instructions', () => {
        const code = `
            beq x1, x2, label1
            bne x3, x4, label2
            blt x5, x6, label3
            bge x7, x8, label4
        label1:
            addi x9, x0, 1
        label2:
            addi x10, x0, 2
        label3:
            addi x11, x0, 3
        label4:
            addi x12, x0, 4
        `;
        const result = assembler.assemble(code);
        expect(result.length).toBe(8);
        expect(result[0].assembly).toBe('beq x1, x2, label1');
        expect(result[1].assembly).toBe('bne x3, x4, label2');
        expect(result[2].assembly).toBe('blt x5, x6, label3');
        expect(result[3].assembly).toBe('bge x7, x8, label4');
    });

    it('should assemble basic U-type instructions', () => {
        const code = `
            lui x1, 0x12345
            auipc x2, 0x1000
        `;
        const result = assembler.assemble(code);
        expect(result.length).toBe(2);
        expect(result[0].assembly).toBe('lui x1, 0x12345');
        expect(result[1].assembly).toBe('auipc x2, 0x1000');
    });

    it('should assemble basic J-type instructions', () => {
        const code = `
            jal x1, label1
            jalr x2, x3, 0
        label1:
            addi x4, x0, 1
        `;
        const result = assembler.assemble(code);
        expect(result.length).toBe(3);
        expect(result[0].assembly).toBe('jal x1, label1');
        expect(result[1].assembly).toBe('jalr x2, x3, 0');
    });

    it('should assemble system instructions', () => {
        const code = `
            ecall
            ebreak
        `;
        const result = assembler.assemble(code);
        expect(result.length).toBe(2);
        expect(result[0].assembly).toBe('ecall');
        expect(result[1].assembly).toBe('ebreak');
    });

    it('should assemble pseudo-instructions', () => {
        const code = `
            li x1, 0x12345678
            mv x2, x3
            j label1
            ret
            nop
        label1:
            addi x4, x0, 1
        `;
        const result = assembler.assemble(code);
        expect(result.length).toBeGreaterThan(5); // Pseudo-instructions expand to multiple instructions
    });

    it('should handle register aliases', () => {
        const code = `
            add zero, ra, sp
            add t0, t1, t2
            add s0, s1, s2
            add a0, a1, a2
        `;
        const result = assembler.assemble(code);
        expect(result.length).toBe(4);
        expect(result[0].assembly).toBe('add x0, x1, x2');
        expect(result[1].assembly).toBe('add x5, x6, x7');
        expect(result[2].assembly).toBe('add x8, x9, x18');
        expect(result[3].assembly).toBe('add x10, x11, x12');
    });

    it('should handle immediate values in different formats', () => {
        const code = `
            addi x1, x2, 42
            addi x3, x4, -42
            addi x5, x6, 0x2A
            addi x7, x8, -0x2A
        `;
        const result = assembler.assemble(code);
        expect(result.length).toBe(4);
        expect(result[0].assembly).toBe('addi x1, x2, 42');
        expect(result[1].assembly).toBe('addi x3, x4, -42');
        expect(result[2].assembly).toBe('addi x5, x6, 0x2A');
        expect(result[3].assembly).toBe('addi x7, x8, -0x2A');
    });

    it('should handle data section', () => {
        const code = `
            .text
            add x1, x2, x3
            .data
            .word 0x12345678
            .half 0x1234
            .byte 0x12
            .ascii "Hello"
            .asciz "World"
        `;
        const result = assembler.assemble(code);
        expect(result.length).toBeGreaterThan(1);
        expect(result[0].assembly).toBe('add x1, x2, x3');
    });
});