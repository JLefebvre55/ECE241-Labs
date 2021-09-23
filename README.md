# ECE241-Labs
Labs and coursework for UofT ECE241.

## Development

MacOS:

1. Install the Verilog compiler: `brew install icarus-verilog`
2. Compile with `iverilog -o $fileNameWithoutExt.o $fileName`
3. Run with `vvp $fileNameWithoutExt.o`