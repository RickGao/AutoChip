# AutoChip

AutoChip is designed to generate functional Verilog modules from an initial design prompt and testbench using a selected large language model. Errors from compilation and simulation are fed back into the LLM for repair.

## NOTES:
**AutoChip is currently undergoing significant refactoring efforts to fix existing issues and significantly expand the tool's capabilities.
Most existing issues will be resolved in the refactor branch, though it should not be considered stable until it is merged into main.**

**PaLM support is being modified and should currently be considered deprecated. Bard has been deprecated by Google and has been replaced with Gemini, so the current setup for that language model is no longer valid.**

## Setup:

### Prerequisites

- Python 3.6 or newer
- `pip` for installing dependencies
- [Icarus Verilog](https://github.com/steveicarus/iverilog)

### Installation

1.  Clone the repository to your local machine:
```sh
git clone https://github.com/shailja-thakur/AutoChip.git
cd AutoChip
```
2.  Set up a virtual environment (optional but recommended):
```sh
python3 -m venv venv
source venv/bin/activate
```
3.  Install the required python packages:
```sh
pip3 install -r requirements.txt
```

### Environment Variables
API Keys (Must be set for the models being used):
 - OpenAI API Key: `OPENAI_API_KEY`
 - Anthropic API Key: `ANTHROPIC_API_KEY`

## Usage
To use the tool, follow the steps below:

1. Prepare your initial Verilog design prompt and a testbench file that matches your module's requirements.

2. Run the tool with the necessary arguments:
```sh
./auto_create_verilog.py [--help] --prompt=<prompt> --name=<module name> --testbench=<testbench file> --iter=<iterations> --model=<llm model> --model_id=<model id> --log=<log file>
```
### Arguments
 - `-h|--help`: Prints this usage message
 - `-p|--prompt`: The initial design prompt for the Verilog module
 - `-n|--name`: The module name, must match the expected DUT module name in the testbench
 - `-t|--testbench`: The testbench file to be run for verification in the feedback loop
 - `-i|--iter`: [Optional] Number of iterations to be run before the tool quits (default: 10)
 - `-m|--model`: The LLM to use for Verilog generation. Must be one of the following:
    - ChatGPT3p5
    - ChatGPT4
    - Claude
    - CodeLLama
 - `-id|--model_id`: [Optional] for model other than CodeLLama, for codellama, model id is the huggingface repository to codellama
 - `-o|--outdir`: [Optional] Directory to output files to
 - `-l|--log`: [Optional] File to log the outputs of the model

