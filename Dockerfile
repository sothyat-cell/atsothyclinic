# Use the official OpenEMR image

FROM openemr/openemr:latest

# Expose port 80

EXPOSE 80

# Set environment variables for admin login

ENV OE_USER=admin
ENV OE_PASS=Admin123
ENV OE_DB_HOST=localhost
ENV OE_DB_USER=openemr
ENV OE_DB_PASS=openemrpass
ENV OE_DB_NAME=openemr
ENV MYSQL_ROOT_PASSWORD=rootpass

# Start OpenEMR (includes built-in database)

CMD ["apache2-foreground"]
