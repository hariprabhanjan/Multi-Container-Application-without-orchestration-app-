#!/bin/bash

# Step 1: Build Docker images
./building_docker_images.sh

# Step 2: Run Docker containers
./run_containers.sh

# Step 3: Execute the curl command
./execute_curl.sh

