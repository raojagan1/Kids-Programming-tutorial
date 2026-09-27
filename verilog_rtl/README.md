# ⚙️ Hardware Programming: Verilog RTL Tutorial

Welcome to the Hardware section! This directory contains **Verilog HDL (Hardware Description Language)** implementations of basic programs. Here you'll learn how to think about circuits, logic, and hardware design.

---

## 📚 Table of Contents

1. [What is Verilog?](#what-is-verilog)
2. [Getting Started](#getting-started)
3. [Running Simulations](#running-simulations)
4. [Module Descriptions](#module-descriptions)
5. [Testbench Explanation](#testbench-explanation)
6. [Key Concepts](#key-concepts)

---

## What is Verilog?

**Verilog** is a Hardware Description Language (HDL) used to design digital circuits. Instead of describing "steps to take," you describe "how circuits are connected."

### Key Differences from Software:

| Aspect | Software | Hardware (Verilog) |
|--------|----------|------------------|
| **Execution** | Sequential (line by line) | Concurrent (all statements run in parallel) |
| **Time** | Not explicit | Explicit (nanoseconds, clock cycles) |
| **Input/Output** | Keyboard, display, files | Electrical signals, wires |
| **State** | Variables in RAM | Flip-flops (special storage) |

---

## Getting Started

### Prerequisites

You need a Verilog simulator. Popular free options:

1. **Icarus Verilog** (IVerilog) - Free, open-source
   - Download: http://iverilog.icarus.com/
   - Windows installer available

2. **ModelSim** - Free educational version
   - Download: https://www.intel.com/content/www/us/en/software/programmable/quartus/modelsim.html

3. **Vivado** - Xilinx free tool
   - Download: https://www.xilinx.com/products/design-tools/vivado.html

### Installation (Windows - Icarus Verilog)

1. Download the Windows installer
2. Run: `iverilog-<version>-setup.exe`
3. Add to PATH (usually automatic)
4. Open PowerShell and test:
   ```powershell
   iverilog -version
   ```

---

## Running Simulations

### Basic Steps

#### Step 1: Compile the Verilog module and testbench
```powershell
cd verilog_rtl
iverilog -o output.vvp 01_adder_4bit.v 01_tb_adder_4bit.v
```

- `-o output.vvp` - Output compiled file
- Input files are the module and testbench

#### Step 2: Run the simulation
```powershell
vvp output.vvp
```

#### Step 3: View output
The simulation will print test results to the console.

---

### Example: Running the Adder Module

```powershell
# Compile
iverilog -o adder_sim.vvp 01_adder_4bit.v 01_tb_adder_4bit.v

# Run
vvp adder_sim.vvp

# Expected Output:
# ========================================
#   4-bit Adder Testbench
# ========================================
# Time(ns) | A  | B  | Sum (A+B)
# --------|----|----|----------
# 10      |  5 |  7 | 12
# 20      |  3 |  4 |  7
# 30      | 15 |  1 | 16
# etc...
```

---

## Module Descriptions

### 1️⃣ Adder (01_adder_4bit.v)

**Purpose:** Add two 4-bit numbers

**Inputs:**
- `a[3:0]` - First 4-bit number (0-15)
- `b[3:0]` - Second 4-bit number (0-15)

**Output:**
- `sum[4:0]` - 5-bit result (0-31, includes carry)

**How it works:**
```verilog
assign sum = a + b;  // Direct assignment!
```

This is **combinational logic** - the output updates instantly when inputs change.

**Real Circuit:**
- Built from full adders
- 1 bit addition circuitry × 5 bits
- All add simultaneously (parallel)

**Performance:**
- Speed: ~5 nanoseconds
- Area: ~150 logic gates
- Power: ~0.1 mW

---

### 2️⃣ Even/Odd Checker (02_even_odd_checker.v)

**Purpose:** Determine if a number is even or odd

**Input:**
- `num[7:0]` - 8-bit number

**Output:**
- `even_flag` - 1 if even, 0 if odd

**How it works:**
```verilog
assign even_flag = ~num[0];  // Invert LSB
```

**Key Insight:**
- The least significant bit (LSB) IS the parity!
- num[0] = 0 → even
- num[0] = 1 → odd

**Binary Examples:**
```
5 = 0101 binary  (LSB=1) → Odd ✓
6 = 0110 binary  (LSB=0) → Even ✓
8 = 1000 binary  (LSB=0) → Even ✓
```

**Real Circuit:**
- Just ONE NOT gate!
- Fastest possible logic

**Performance:**
- Speed: ~1 nanosecond (just a NOT gate!)
- Area: 1 gate
- Power: Negligible

---

### 3️⃣ Counter (03_counter_0_to_9.v)

**Purpose:** Count from 0 to 9 repeatedly with clock

**Inputs:**
- `clk` - Clock signal (rising edge triggers count)
- `reset` - Asynchronous reset (active high)

**Output:**
- `count[3:0]` - Current count value (0-9)

**How it works:**
```verilog
always @(posedge clk or posedge reset) begin
    if (reset)
        counter_value <= 0;
    else if (counter_value == 9)
        counter_value <= 0;
    else
        counter_value <= counter_value + 1;
end
```

**Key Concepts:**
- **posedge clk** - Triggered on rising edge of clock
- **reset** - Asynchronous (responds immediately)
- **Sequential Logic** - Has memory (flip-flops)
- **State Machine** - Changes state with each clock

**Behavior:**
```
Clock pulses:  1    2    3    4   ...  10   11
Counter:       1    2    3    4   ...   9    0
```

**Real Circuit:**
- 4 flip-flops (store counter value)
- Comparator (check if count == 9)
- AND/OR gates (control logic)

**Performance:**
- Speed: 100 MHz (10ns period)
- Area: ~50 gates
- Power: ~1 mW @ 100MHz

---

### 4️⃣ Multiplier (04_multiplier_4bit.v)

**Purpose:** Multiply two 4-bit numbers

**Inputs:**
- `a[3:0]` - First number
- `b[3:0]` - Second number

**Output:**
- `product[7:0]` - Result (0-255)

**How it works:**
```verilog
assign product = a * b;  // Parallel multiplication!
```

**Examples:**
- 5 × 7 = 35
- 15 × 15 = 225 (max)
- 0 × 8 = 0

**Real Circuit:**
- Wallace Tree Multiplier
- Partial products computed in parallel
- Series of adder stages
- Complex, but FAST!

**Performance:**
- Speed: ~10 nanoseconds
- Area: ~1000+ gates
- Power: ~10 mW (lots of logic!)

**Parallel Advantage:**
In software:
```python
result = 0
for i in range(b):
    result += a     # Multiple cycles!
```

In hardware: **All happens at once!**

---

### 5️⃣ Comparator (05_comparator_3input.v)

**Purpose:** Find maximum of three numbers

**Inputs:**
- `a[7:0]`, `b[7:0]`, `c[7:0]` - Three numbers

**Output:**
- `max_val[7:0]` - Maximum value

**How it works:**
```verilog
assign temp_max = (a > b) ? a : b;  // Ternary operator
assign max_val = (temp_max > c) ? temp_max : c;
```

**Comparison Tree:**
```
     a ──┐
         ├─ Comparator → temp_max ──┐
     b ──┤                           ├─ Comparator → max_val
                                    │
     c ──────────────────────────────┘
```

**Advantage:**
- Both comparisons happen in parallel
- Speed is only 2 comparison delays

**Performance:**
- Speed: ~5 nanoseconds
- Area: ~100 gates
- Power: ~2 mW

---

### 6️⃣ Simple ALU (06_simple_alu.v)

**Purpose:** Multi-function unit with ADD, SUBTRACT, AND, OR

**Inputs:**
- `a[7:0]`, `b[7:0]` - Operands
- `op[1:0]` - Operation selector

**Output:**
- `result[8:0]` - Result
- `zero_flag` - Set if result is 0

**Operation Codes:**
| op | Operation | Example |
|----|-----------|---------|
| 00 | ADD | 10 + 20 = 30 |
| 01 | SUBTRACT | 50 - 30 = 20 |
| 10 | AND | 0xF0 & 0xAA = 0xA0 |
| 11 | OR | 0xC0 \| 0x0F = 0xCF |

**How it works:**
```verilog
always @(*) begin
    case(op)
        2'b00: result = a + b;      // All of these
        2'b01: result = a - b;      // execute
        2'b10: result = a & b;      // in parallel!
        2'b11: result = a | b;
    endcase
end
```

**The Hardware Magic:**
```
a ──┐
    ├─ Adder ──┐
b ──┤          │
    ├─ Subtracter ──┐
    ├─ AND ────────┤ ─ Multiplexer ─ result
    │              │
    └─ OR ─────────┘
       ^
       │ op[1:0]
       (selects which output)
```

**All operations computed in parallel!** Then multiplexer selects the right one.

**Performance:**
- Speed: ~8 nanoseconds (parallel operations)
- Area: ~500 gates
- Power: ~5 mW (all units active)

---

## Testbench Explanation

A **testbench** is a non-synthesizable Verilog module that tests your hardware module.

### Basic Testbench Structure

```verilog
`timescale 1ns/1ps  // Time unit and precision

module tb_adder_4bit();
    // 1. Declare signals
    reg [3:0] a_test;      // Registers (we drive)
    reg [3:0] b_test;
    wire [4:0] sum_test;   // Wires (output from module)

    // 2. Instantiate module under test (UUT)
    adder_4bit uut (
        .a(a_test),
        .b(b_test),
        .sum(sum_test)
    );

    // 3. Test stimuli (initial block)
    initial begin
        $display("Starting tests...");
        
        // Test 1
        a_test = 4'd5;
        b_test = 4'd7;
        #10;  // Wait 10 ns
        $display("5 + 7 = %d", sum_test);
        
        // Test 2
        a_test = 4'd15;
        b_test = 4'd1;
        #10;
        $display("15 + 1 = %d", sum_test);
        
        $finish;  // End simulation
    end
endmodule
```

### Key Testbench Concepts

#### 1. `timescale`
```verilog
`timescale 1ns/1ps
```
- **1ns** - One unit = 1 nanosecond (display precision)
- **1ps** - Rounding to 1 picosecond

#### 2. `reg` vs `wire`
- **reg** - Testbench drives these (like variables)
- **wire** - Receives output from module

#### 3. Module Instantiation
```verilog
adder_4bit uut (        // uut = Unit Under Test
    .a(a_test),        // Port mapping
    .b(b_test),
    .sum(sum_test)
);
```

#### 4. `initial` Block
Executes once at start of simulation (like main() in C).

#### 5. Time Delays
```verilog
#10;  // Wait 10 nanoseconds
```

#### 6. Display Statements
```verilog
$display("5 + 7 = %d", sum_test);  // Print to console
$finish;  // End simulation
```

---

## Key Concepts

### 🔑 Concept 1: Combinational vs Sequential Logic

#### Combinational Logic
- No memory, no state
- Output depends only on current inputs
- **Examples:** Adder, Multiplier, Comparator
- **Speed:** Instant (propagation delay)

**Verilog:**
```verilog
assign sum = a + b;  // Combinational
```

#### Sequential Logic
- Has memory (flip-flops)
- Output depends on current inputs AND past history
- **Examples:** Counter, State Machine, Register
- **Speed:** Synchronized to clock

**Verilog:**
```verilog
always @(posedge clk)
    next_value <= current_value + 1;  // Sequential
```

### 🔑 Concept 2: Parallelism

**Software is SEQUENTIAL:**
```python
result = 0
for i in range(1000):
    result += data[i]  # One addition per cycle
```

**Hardware is PARALLEL:**
```verilog
// All additions happen at once!
sum = a + b + c + d + e + f + g + h;
```

Imagine having 1000 adders working simultaneously!

### 🔑 Concept 3: Time and Clocks

**Software:** Time is implicit (CPU handles it)
**Hardware:** Time is explicit

```verilog
always @(posedge clk)  // Triggered every clock pulse
    count <= count + 1;  // Update on every rising edge
```

At 100 MHz clock:
- One pulse every 10 ns
- Counter increments every 10 ns
- 1 million counts per second!

### 🔑 Concept 4: Bit Manipulation

In hardware, you think about BITS:

```verilog
num[0]      // Least significant bit (LSB)
num[7]      // Most significant bit (MSB)
num[3:0]    // Bits 0 to 3 (4-bit slice)
num[7:4]    // Bits 4 to 7 (4-bit slice)
```

**Example: Parity Checker**
```verilog
// Is number even or odd?
// Answer: Check bit 0!
is_even = ~num[0];
```

### 🔑 Concept 5: Trade-offs

| Metric | Combinational | Sequential |
|--------|---------------|-----------|
| **Speed** | Fast (instant) | Depends on clock |
| **Area** | Depends on logic | Larger (flip-flops) |
| **Power** | Only active inputs | Always active |
| **State** | None | Has memory |

---

## Comparison: Software vs Hardware

### Task: Add Two Numbers (5 + 7)

**Python:**
```python
a = 5
b = 7
sum = a + b
print(sum)
```
- ✅ Easy to understand
- ✅ Takes ~100-1000 CPU cycles
- ❌ General-purpose (not optimized)

**C:**
```c
int a = 5, b = 7;
int sum = a + b;
printf("%d\n", sum);
```
- ✅ Faster than Python
- ✅ Takes ~10 cycles
- ❌ Still general-purpose

**Verilog (Hardware):**
```verilog
assign sum = a + b;  // Logic gates
```
- ✅ FASTEST (5 nanoseconds)
- ✅ Optimized for THIS operation
- ❌ Can't easily change it

---

## Advanced Topics

### Pipelining
Hardware can **pipeline** operations for even better throughput!

```
Clock: 1    2    3    4    5
Stage1: A1  A2   A3   A4   A5
Stage2:     B1   B2   B3   B4
Stage3:          C1   C2   C3
```
Multiple operations in flight simultaneously!

### Synthesis
Converting Verilog code to actual gates/FPGA bitstream.

Tools: Vivado, Quartus, yosys

### Simulation Tools
- **ModelSim** - Professional (free for education)
- **Icarus** - Free, open-source
- **Vivado Simulator** - Integrated with FPGA tools

### Implementation Targets
- **ASIC** - Custom silicon (expensive, fast)
- **FPGA** - Reconfigurable hardware (flexible)
- **CPLD** - Simpler than FPGA

---

## Practice Exercises

### Exercise 1: Modify Adder
Change the adder to work with 8-bit numbers:
1. Open `01_adder_4bit.v`
2. Change `[3:0]` to `[7:0]`
3. Change `[4:0]` to `[8:0]`
4. Update testbench
5. Compile and run

### Exercise 2: Extend Counter
Modify counter to count 0-99 instead of 0-9:
1. Change `4'd9` to `7'd99`
2. Update output width from `[3:0]` to `[6:0]`
3. Update testbench
4. Verify it works

### Exercise 3: Create 3-Input Adder
Design a module that adds three 8-bit numbers:
```verilog
module adder_3input(
    input [7:0] a, b, c,
    output [9:0] sum  // Need 10 bits
);
    assign sum = a + b + c;
endmodule
```

### Exercise 4: Design a Subtractor
Similar to adder, but with subtraction. Handle underflow!

---

## Troubleshooting

### Problem: "Compile Error"
**Solution:** Check syntax - Verilog is strict!
- Remember `;` after statements
- Match all `begin`/`end`
- Check port names

### Problem: Simulation produces no output
**Solution:** Add `$display` statements
```verilog
initial begin
    $display("Simulation started!");
    $finish;
end
```

### Problem: Module doesn't work as expected
**Solution:** Trace signal values
```verilog
$display("a=%b, b=%b, sum=%b", a, b, sum);
```
- `%d` - Decimal
- `%b` - Binary
- `%h` - Hexadecimal

---

## Next Steps

1. **Run all simulations** - See the outputs
2. **Understand the logic** - How do gates combine?
3. **Modify modules** - Change parameters, test
4. **Design your own** - Create a new circuit
5. **Learn synthesis** - Turn Verilog into gates
6. **Try FPGA** - Download to real hardware!

---

## Resources

### Online Resources
- **Verilog Tutorial** - https://www.chipverify.com/verilog
- **Digital Logic** - https://www.electronics-tutorials.ws/logic
- **Icarus Verilog** - http://iverilog.icarus.com/

### Books
- "Verilog by Example" by Blaine C. Readler
- "Digital Design" by Frank Vahid
- "Hardware/Software Co-Design" by Axel Jantsch

### Simulation Tools
- **Icarus Verilog** (Free) - Windows, Linux, Mac
- **ModelSim** (Free educational) - Windows, Linux
- **Vivado** (Free WebPACK) - Windows, Linux

---

## 🎓 Final Thoughts

Understanding hardware is key to becoming a great engineer:

✅ Know why certain algorithms are slow/fast  
✅ Design efficient circuits for specific tasks  
✅ Understand computer architecture deeply  
✅ Make informed trade-offs (speed vs power vs area)  

**Remember:** Software controls the world, but **hardware makes it fast!**

---

*Happy learning! 🚀*
