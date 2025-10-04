# 🔢 Digital Comparator Series (2-bit, 4-bit, 8-bit)

### 🎯 **Overview**
This project contains Verilog implementations and testbenches for **2-bit, 4-bit, and 8-bit digital comparators**, designed and simulated using **Xilinx Vivado**.

Each comparator determines whether input `A` is **greater than**, **equal to**, or **less than** input `B`. The modules are fully combinational and verified through behavioral simulation.

---

## ⚙️ **Project Structure**

```
├── comparator_2_bit.v
├── comparator_4_bit.v
├── comparator_8_bit.v
├── comparator_2_bit_tb.v
├── comparator_4_bit_tb.v
├── comparator_8_bit_tb.v
├── comparator_series.xpr
├── README.md
└── .gitignore
```

---

## 🧠 **Theory**

A **digital comparator** compares two binary numbers (`A` and `B`) and outputs three signals:

| Output | Meaning      | Condition |
|:--------|:--------------|:-----------|
| `GT`    | Greater Than  | `A > B`    |
| `EQ`    | Equal         | `A == B`   |
| `LT`    | Less Than     | `A < B`    |

For *n-bit comparators*, the logic is extended for bit-widths of 2, 4, and 8 bits.

---

## 🧩 **Modules Description**

| Module Name | Bit Width | Description |
|--------------|------------|-------------|
| `comparator_2_bit` | 2-bit | Compares two 2-bit binary numbers |
| `comparator_4_bit` | 4-bit | Uses 4-bit inputs for comparison |
| `comparator_8_bit` | 8-bit | Extended comparator for 8-bit values |

Each module produces three outputs: `gt`, `eq`, and `lt`.

---

## 💻 **Simulation Setup**

### **Software Required**
- [Xilinx Vivado Design Suite](https://www.xilinx.com/support/download.html)
- (Optional) GTKWave for `.vcd` waveform viewing

### **Steps to Simulate**
1. Open **Vivado**.  
2. Create a **new project** and add the desired module (e.g., `comparator_8_bit.v`) and its testbench (`comparator_8_bit_tb.v`).  
3. Set the testbench as **Top Module**.  
4. Run **Behavioral Simulation**.  
5. Observe waveform or console output for `a`, `b`, `gt`, `eq`, and `lt`.

---

## 🧪 **Example Output**

**Console Output:**
```
Time |   a    b  | gt eq lt
   0 |   0    0  |  0  1  0
  10 |   5   10  |  0  0  1
  20 |  10    5  |  1  0  0
  30 |  25   25  |  0  1  0
```

---

## 🧰 **Design Highlights**
- Fully **behavioral Verilog**.
- Compact, scalable, and easy to extend to higher bit widths.
- Compatible with both **Vivado** and **ModelSim**.
- Includes self-checking **testbenches** for all comparators.

---

## 🧾 **Learning Outcomes**
By completing this project, you will:
- Understand **combinational logic design** using Verilog.
- Learn **hierarchical hardware design** (scaling from 1-bit to 8-bit).
- Practice **testbench creation and simulation** in Vivado.

---

## ✨ **Future Work**
- Create a **16-bit comparator** using hierarchical design (combine smaller comparators).  
- Implement **carry look-ahead** or **pipeline** structure for performance optimization.  
- Add **VCD waveform export** for external analysis.

---

## 🧑‍💻 **Author**
**Salamat Ali**  
Digital Design Enthusiast  
📍 *Designed and simulated on Ubuntu Linux using Xilinx Vivado.*
