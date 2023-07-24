# Use the official Python 3.9 image as the base image
FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the Python script into the container at /app
COPY pptx_to_rtf.py /app/

# Copy all .pptx files from the current directory into the container at /app
COPY *.pptx /app/

# Install python-pptx
RUN pip install python-pptx pyth

# The CMD command specifies the command that will be executed when the container starts
CMD ["python", "pptx_to_rtf.py"]
