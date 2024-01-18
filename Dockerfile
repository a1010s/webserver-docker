# Use the official Alpine Linux as the base image
FROM alpine:latest

# Install Nginx
RUN apk update && apk add nginx

# Copy your HTML files to the default Nginx web root directory
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]
