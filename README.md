# PPTX to RTF Converter

This Python script converts PowerPoint (.pptx) files to Rich Text Format (.rtf) files using the `python-pptx` library and the `pyth` library. The converted files are saved in the `/converted` folder. The conversion is skipped if a `.rtf` file for a `.pptx` file already exists.

## Requirements

- Python 3.9 or higher
- `python-pptx` and `pyth` library

## Getting Started

1. Clone this repository to your local machine: `git clone https://github.com/yourusername/pptx-to-rtf-converter.git`

2. Navigate to the project directory: `cd pptx-to-rtf-converter`

3. Run the bash script to convert the `.pptx` files: `./run_converter.sh`

The converted `.rtf` files will be available in the `converted_files_on_host` directory on your host machine.

## Usage

1. Place all the `.pptx` files you want to convert into the same directory as the Dockerfile.

2. Run the bash script as mentioned in the Getting Started section.

3. The script will convert all the `.pptx` files to `.rtf` format and save them in the `/converted` folder.

## Docker Image

If you prefer to use Docker to run the converter, you can build the Docker image and run the container with the provided Dockerfile.

1. Build the Docker image: `docker build -t my_pptx_converter .`

2. Run the container with the volume mapped to the `/converted` folder: `docker run -v "$(pwd)/converted_files_on_host:/app/converted" my_pptx_converter`
   









