# NanoProcessor_Group_5

A custom nano-processor implemented in VHDL — a small single-cycle CPU built from scratch, including register file, ALU, control/decode path, and memory, verified with per-module testbenches.

Public mirror of a team project (originally developed in a private repo); pushed here with the team's agreement to showcase individual contributions.

## What I (Dhinanjaya Fernando) built

- **Register file** — `Register_4_Bit.vhd`, `Register_Bank.vhd`
- **Multiplexers** — `Mux_2_Way_3_Bit.vhd`, `Mux_2_Way_4_Bit.vhd`, `Mux_8_Way_4_Bit.vhd`
- **Control/decode path** — `Instruction_Decoder.vhd`, `Program_Rom.vhd`
- Early versions of the arithmetic unit, counter, and ripple-carry adder (later superseded by teammates' revisions)
- Packaging/integration of the project build bundles across iterations (base, extended, testbench, dual-display variants)

## Team

Built with [Kalana-Lakshan](https://github.com/Kalana-Lakshan), [Harshana1004](https://github.com/Harshana1004), and Thevindu Fernando.
