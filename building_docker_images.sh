#!/bin/bash

# Build the Flask app image
docker build -t flaskapp -f Dockerfile .

# Build the MariaDB image
docker pull mariadb:10.4
