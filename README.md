# Quick links to lab
- [Lab1 Vivado](Lab1-Advanced/Lab1-Advanced/Lab1-Advanced.xpr)
- [Lab1 Report](https://1drv.ms/w/s!Al2TdNH3-L1Vox4Vc7AQdnZfzUo_?e=DPLuAp)

# Final Project Designs
- [Float/Double arithematic](https://github.com/dawsonjon/fpu)
- [Tensorflow MNIST example](https://www.tensorflow.org/tutorials/quickstart/beginner)
- [Keras save model](https://www.tensorflow.org/guide/keras/save_and_serialize)
 
# Schematic systhesis tools
https://electronics.stackexchange.com/questions/13995/how-can-i-generate-a-schematic-block-diagram-image-file-from-verilog
```bash=
yosys
yosys> read_verilog [Your verilog].v
… …
yosys> hierarchy -check;
yosys> proc;
yosys> opt;
yosys> fsm;
yosys> opt;
yosys> select [Your module]; # Optional if you only have one module
yosys> show;
```
