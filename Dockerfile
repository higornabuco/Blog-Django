# Use an official Python image as the base image
FROM python:3.8

# Set the working directory within the container
WORKDIR /app

# Expose the port that your Python application will listen on
EXPOSE 8000

# Install development tools (musl-dev is not needed)
RUN apt-get update && apt-get install -y build-essential

# Create and activate a virtual environment
RUN python3 -m venv ./venv
RUN /bin/bash -c "source ./venv/bin/activate"

# Copy the requirements.txt file to the container
COPY ./mysite/ .

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code to the container
COPY . .

# Define the command to run your Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
