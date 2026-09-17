# Parameterized ALU

A parameterized ALU implemented in Verilog HDL.

## Features

- Parameterized data width
- Parameterized opcode width
- Addition
- Subtraction
- Bitwise AND
- Bitwise OR
- XOR
- Left shift
- Right shift
- Less-than comparison
- Zero flag

## Simulation

The ALU was tested using a Verilog testbench.

### Simulation Output

![Simulation Output](images/alu_simulation.png)

### Test Cases

| Opcode | Operation | A | B | Expected Output |
|--------|-----------|---|---|------------------|
| 000 | ADD | 0001 | 0004 | 0005 |
| 001 | SUB | 0001 | 0004 | FFFD |
| 010 | AND | 0001 | 0004 | 0000 |
| 111 | LESS THAN | 0001 | 0004 | 0001 |
