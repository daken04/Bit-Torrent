# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set environment variables to suppress interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install required tools
RUN apt-get update && apt-get install -y \
    g++ \
    make \
    openssl \
    libssl-dev \
    vim \
    curl \
    net-tools \
    && apt-get clean

# Set the working directory
WORKDIR /app

# Copy the tracker and client folders into the container
COPY tracker /app/tracker
COPY client /app/client

# Expose tracker ports
EXPOSE 5000 6000

# Default command to keep the container alive
CMD ["/bin/bash"]
