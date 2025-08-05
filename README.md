# Vending Machine with Change System - Verilog HDL Project

## Overview
This project implements a **Vending Machine with Change Return System** using **Verilog HDL**. The vending machine accepts 5 Rs and 10 Rs coins, dispenses a product priced at 15 Rs, and returns appropriate change if an overpayment is made or transaction is incomplete.

The design is based on a **Finite State Machine (FSM)** approach and covers all state transitions with proper change handling mechanisms. Simulation results validate correct functionality for multiple input scenarios.

---

## Features
- FSM-based Vending Machine Design
- Accepts 5 Rs and 10 Rs coins
- Dispenses product (Water Bottle) costing 15 Rs
- Returns appropriate change for overpayment or incomplete transactions
- Synthesizable Verilog HDL Code
- Testbench for Functional Verification

---

## FSM State Diagram
The vending machine has three primary states:
1. **S0 (0 Rs)**: No money inserted.
2. **S1 (5 Rs)**: 5 Rs inserted.
3. **S2 (10 Rs)**: 10 Rs inserted.

### State Transitions:
- From **S0**:
  - Insert 5 Rs → S1
  - Insert 10 Rs → S2
  - No input → Stay in S0
- From **S1**:
  - Insert 5 Rs → S2
  - Insert 10 Rs → Dispense Product, No Change → Return to S0
  - No input → Return Change (5 Rs) → Return to S0
- From **S2**:
  - Insert 5 Rs → Dispense Product, No Change → Return to S0
  - Insert 10 Rs → Dispense Product + Return Change (5 Rs) → Return to S0
  - No input → Return Change (10 Rs) → Return to S0

---

## Verilog Modules
### 1. Vending Machine FSM (`vending_machine_18105070.v`)
- Inputs: `clk`, `rst`, `in[1:0]` (coin input)
- Outputs: `out` (product dispense), `change[1:0]` (change return)
- Implements the FSM transitions and output logic.

### 2. Testbench (`vending_machine_tb.v`)
- Simulates different input scenarios:
  - Multiple consecutive coin insertions
  - Incomplete transactions (return change)
  - Overpayment scenarios (return change + product)

---

## How to Run
1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/vending-machine-verilog.git
    cd vending-machine-verilog
    ```
2. Open the project in a Verilog simulator (ModelSim/Vivado/Xilinx/EDAPLAYGROUND).
3. Compile the Verilog source and testbench files.
4. Run the simulation.
5. View the waveform (`.vcd` file) to verify:
    - Product dispensing logic
    - Correct change return mechanism

---

## Simulation Scenarios Verified
- Inserting 5 Rs three times
- Inserting 5 Rs followed by 10 Rs
- Inserting 10 Rs two times
- Inserting 5 Rs and cancelling transaction
- Inserting 10 Rs and cancelling transaction

---

## Tools Used
- **Verilog HDL** for design and simulation
- **ModelSim/Xilinx/Vivado/EDA Playground** for simulation and waveform analysis

---

## Learning Outcomes
- FSM Design using Verilog HDL
- Handling multiple input conditions and outputs in digital systems
- Writing synthesizable RTL Code
- Building Verilog Testbenches for functional verification
- Waveform analysis for debugging HDL designs

---

## References
- [Wikipedia - Vending Machines](https://en.wikipedia.org)
- [EDA Playground](https://www.edaplayground.com)
- YouTube Tutorials on FSM Design

---

## License
This project is licensed under the MIT License.

---

## Author
Md Huzaifa
