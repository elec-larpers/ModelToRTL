# LibreLane Handoff

Relevant synthesizable Verilog is in `rtl/`.

- `yolo26n_top.v`: composed top wrapper
- `yolo26n_sram_2r2w.v`: SRAM wrapper placeholder
- `yolo26n_stage0.v` .. `yolo26n_stage23.v`: namespaced stage RTL for integration

`sources.f` lists the RTL files in compile order.

Run the composed simulation with:

```bash
bash run_top_sim.sh
```
