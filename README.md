Parameterized ALU in Verilog
About this project

This project is a simple implementation of an Arithmetic Logic Unit (ALU) using Verilog.
What makes it interesting is that the design is parameterized, which means the bit-width can be changed easily without rewriting the whole code.

I built this to understand how basic processor operations work at the hardware level and how different operations are controlled using a single selector.

What it does
The ALU takes two inputs (A and B) and performs different operations based on a control signal (ALU_Sel).

It supports:
Addition and subtraction
Basic logic operations (AND, OR, XOR, NOR)
Bit shifting (left and right)
Simple comparisons (greater than, equal to)

It also generates:
Carry Out (for arithmetic operations)
Zero flag (when result is 0)

Tools I used
Verilog HDL
Icarus Verilog (for simulation)
EDA Playground
EPWave (to view waveforms)
How to run this
Open EDA Playground
Paste the ALU code in the design section
Paste the testbench in the testbench section
Select Icarus Verilog
Run the simulation
Open EPWave to see how signals change over time
Output

The simulation shows:

Input values changing over time
Different operations being applied
Result updating accordingly
Carry and Zero flags

You can also view this clearly in the waveform.

