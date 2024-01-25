# Use an official Python runtime as a parent image
FROM vvint3r/netstyr:latest

# Set the working directory in the container
WORKDIR /app

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

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable (optional)
# ENV NAME <value>

# Run app.py when the container launches
CMD ["python", "./app.py"]