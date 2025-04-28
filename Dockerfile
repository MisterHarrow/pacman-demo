# Use an official web server image as a parent image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the local app code to the container's web root
COPY . .

# Expose port 80
EXPOSE 80