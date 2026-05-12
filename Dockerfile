# Start from official Debian base image
FROM debian:stable-slim

# Prevent interactive prompts during package installs
ENV DEBIAN_FRONTEND=noninteractive

# Update system and install basic tools
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    bash \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory inside container
WORKDIR /app

# Copy your project files into the container
COPY . /app

# Default command when container starts
CMD ["bash"]