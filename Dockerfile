# Use the official Nginx image
FROM nginx:alpine

# Copy the contents of the 'frontend' directory to the Nginx document root
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
