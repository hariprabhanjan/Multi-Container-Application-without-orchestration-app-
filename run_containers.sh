#!/bin/bash

# Run the MariaDB container
docker run -d -p 3306:3306 --name mariadb mariadb:10.4

# Run the Flask app container
docker run -d -p 5000:5000 --link mariadbtest:db --name flaskapp flaskapp
