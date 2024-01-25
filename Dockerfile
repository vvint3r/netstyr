# Use an official Python runtime as a parent image
FROM vvint3r/netstyr:latest

# Set environment variables:
# - PYTHONUNBUFFERED: Prevents Python from buffering stdout and stderr
# - PYTHONDONTWRITEBYTECODE: Prevents Python from writing pyc files to disk
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# Install system dependencies (if necessary)
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     <your-dependencies-here> \
#     && rm -rf /var/lib/apt/lists/*

# Copy the current directory contents into the container at /usr/src/app/
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
