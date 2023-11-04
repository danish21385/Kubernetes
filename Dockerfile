# Use the official Nginx image as the base image
FROM nginx:latest

# Create the image directory within the Nginx web root
RUN mkdir -p /usr/share/nginx/html/image

# Copy the static files to the default Nginx web root directory
COPY image/index.html /usr/share/nginx/html/image

# Copy the custom Nginx configuration
COPY default.conf /etc/nginx/conf.d/

# Copy the static files to the default Nginx web root directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
