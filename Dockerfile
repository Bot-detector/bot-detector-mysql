FROM mysql:latest

# Container will (alphabetically) execute all files with extensions .sh, .sql and .sql.gz that are found in this directory
COPY docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d/

# this doesn't automatically expose the port, only suggests it
# `docker run -P image` will automatically port-forward all exposed ports
EXPOSE 3306
