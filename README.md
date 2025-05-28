# 8-bit ALU in Verilog

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog. The ALU performs various bitwise, shift, and arithmetic operations and provides `carry` and `zero` flags as outputs.

## 🔧 Supported Operations

| Alu_Sel | Operation     | Description               |
|---------|---------------|---------------------------|
| 000     | AND           | A & B                     |
| 001     | OR            | A \| B                    |
| 010     | XOR           | A ^ B                     |
| 011     | NOT           | ~A                        |
| 100     | Left Shift    | A << 1                    |
| 101     | Right Shift   | B >> 1                    |
| 110     | ADD           | A + B (with carry out)    |
| 111     | SUB           | A - B (with borrow flag)  |

## 📁 Files

- `Design.sv` – ALU module
- `Testbench.sv` – Testbench for verifying the ALU
- 'Output.vcd` – Waveform output (generated after simulation)

## ▶️ How to Run

1. Use any Verilog simulator (e.g., Icarus Verilog, ModelSim).
2. Compile and run the testbench
3. View the waveform (if using GTKWave):
