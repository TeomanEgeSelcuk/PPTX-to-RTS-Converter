#!/bin/bash

# Create the 'converted_files_on_host' directory on the host machine if it doesn't exist
if [ ! -d "converted_files_on_host" ]; then
    mkdir converted_files_on_host
fi

# Build the Docker image with the tag 'my_pptx_converter'
docker build -t my_pptx_converter .

# Run the Docker container with the volume mapped to the /converted folder in the container
docker run -v "$(pwd)/converted_files_on_host:/app/converted" my_pptx_converter
