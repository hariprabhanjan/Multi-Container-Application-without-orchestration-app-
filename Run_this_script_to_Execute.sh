#!/bin/bash

# Build the Flask app image
docker build -t flaskapp -f Dockerfile .

# Build the MariaDB image
docker build -t my-mariadb -f mariadbDockerfile .

# Run the MariaDB container
docker run -d --name my-mariadb -p 3306:3306 my-mariadb

# Run the Flask app container
docker run -d -p 5000:5000 --link my-mariadb:db --name flaskapp flaskapp

#sleep
sleep 35

# Execute the curl command to access the Flask API
curl http://localhost:5000/api/people
