# Use the official Nginx image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static files
#RUN rm -rf ./*

# Copy the built application from the local directory to the container
COPY . /usr/share/nginx/html

# Copy a custom Nginx configuration file
#COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 3200

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
