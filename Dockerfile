# Aloha Course Generator - Docker Image
# Uses nginx:alpine as a lightweight static file server

FROM nginx:alpine

# Add labels for container identification
LABEL maintainer="Aloha University"
LABEL description="Aloha Course Generator - Course creation portal"
LABEL version="1.0"

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy static files to nginx html directory
COPY index.html /usr/share/nginx/html/
COPY courses.js /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost:80/ || exit 1

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
