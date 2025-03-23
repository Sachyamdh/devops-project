FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx index file
RUN rm -rf ./*

# Copy the HTML file to the container
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
