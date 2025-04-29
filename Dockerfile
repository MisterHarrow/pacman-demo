# Dockerfile builds the 'what' - i.e. puts the application in a box/container


# Base Image: This FROM instruction tells Docker not to start from scratch, but to use an existing, pre-built image called nginx:alpine as the foundation. 
# This nginx:alpine image already contains:
# All the necessary system libraries and dependencies required for that specific version of Nginx to run on Alpine Linux.
FROM nginx:alpine

# Set the working directory
# This consistently applies your application code and configuration on top of that already consistent base layer provided by nginx:alpine
WORKDIR /usr/share/nginx/html

# Copy the local app code to the container's web root where nginx will serve it from (where the docker container expects to find your app's code)
COPY . .

# Expose port 80
EXPOSE 80