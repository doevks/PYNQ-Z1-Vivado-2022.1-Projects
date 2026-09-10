# PYNQ-Z1 + Vivado 2022.1 Projects

> Hands-on FPGA projects built on the **PYNQ-Z1** board, designed in **Vivado 2022.1**, and tested/controlled through **Python (Jupyter on PYNQ)**.

![Board](https://img.shields.io/badge/Board-PYNQ--Z1-blue)
![Tool](https://img.shields.io/badge/Vivado-2022.1-orange)
![Language](https://img.shields.io/badge/HDL-VHDL-green)
![Python](https://img.shields.io/badge/Control-Python%20%2F%20Jupyter-yellow)

---

## About

This repository collects a series of FPGA overlay projects — from simple combinational logic to more advanced streaming and acceleration designs — each with:
- a Vivado block design / VHDL source,
- a matching `.bit` + `.hwh` overlay pair,
- and a Python/Jupyter notebook to drive and test it on PYNQ.

Each numbered entry below is a self-contained project folder.

---

## Project Index

1. **Logic Calculation**
   - `1.1` — Vivado overlay implementing **XOR, XNOR, and NAND** gates
   - `1.2` — Alternated version of the PYNQ Python control script
2. _Coming soon_
3. _Coming soon_

> Add new entries here as you complete more projects — keep the same `X.Y` sub-numbering pattern for variations of the same overlay (e.g. `2.1`, `2.2`, ...).

---

## Suggested Folder Structure

```
project_X.Y/
├── vivado/
│   ├── project_X.Y.xpr
│   └── src/              # VHDL / HLS sources
├── pynq/
│   ├── project_X.Y.bit
│   ├── project_X.Y.hwh
│   └── test_project_X.Y.ipynb
└── README.md              # short notes: ports, gates, test values
```

Keeping `.bit` and `.hwh` with the **same base filename** is required — PYNQ's `Overlay()` class depends on it to load hardware metadata correctly.

---

## Requirements

- Vivado 2022.1 (Design Suite)
- PYNQ-Z1 board with a compatible PYNQ image
- Python 3 + Jupyter (via PYNQ)
- `pynq` Python package (pre-installed on the board image)

---

## Quick Test Flow

1. Generate bitstream in Vivado → export `.bit` + `.hwh`
2. Rename both files to the same base name
3. Upload to the board's Jupyter file browser
4. Load and test:
   ```python
   from pynq import Overlay
   ol = Overlay("your_project.bit")
   print(ol.ip_dict.keys())
   ```

---

## License

Add your preferred license here (e.g. MIT).
