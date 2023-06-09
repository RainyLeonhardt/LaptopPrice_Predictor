# Start with a base image containing Python runtime
FROM python:3.9.12-slim-buster

# Set the working directory in the Docker image
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8501 available to the world outside this container
EXPOSE 8501

# Run the command to start Streamlit app
CMD streamlit run app.py