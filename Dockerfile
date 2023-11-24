# Use an official Python runtime as a parent image
FROM alpine:latest
RUN apk add python3 py3-pip \
    && pip3 install flask 
# Set the working directory to /app
WORKDIR /

# Copy the current directory contents into the container at /app
COPY app /

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV NAME World

# # Run app.py when the container launches
ENTRYPOINT ["sh", "startup_script.sh"]
