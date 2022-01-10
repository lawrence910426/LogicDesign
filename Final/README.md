# Module Definitions
- Camera Adjust
  - inputs
    - clk
    - Cam_in (original camera inputs)
  - outputs
    - Cam_out (25x25)
- Screen
  - inputs
    - Cam
    - Com
    - High
    - clk
  - outputs
    - Display
- Com
  - inputs
    - Start
    - clk
  - outputs
    - Com
- Debounce_Onepulse
  - inputs
    - clk
    - in
  - outputs
    - out
- Speaker
  - inputs
    - start
    - clk
  - outputs
    - speaker
- Neural Network
  - inputs
    - clk
    - CAM (25x25)
    - Start
  - outputs
    - Finish
    - Rock
    - Paper
    - Scissors
    - Highest
   - Behavior
    - when start = 1 and posedge clk, the module will scan the inputs
    - finish will be set to high for 1 cycle. Rock & Paper & Scissors & Highest will be set for 1 cycle at the same time.
 
# Presentation
10 minuites.

# Proposal
A rock paper scissor game!

# Coding
Testbench first (?

# Experiments
Convolutions, Precisions, Dense size, PCA, ...etc

# Peripherals
A camera (?)
