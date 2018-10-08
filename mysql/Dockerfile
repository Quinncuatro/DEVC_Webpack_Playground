FROM mysql:5.7.18

LABEL author="Henry Quinn <Henry_Quinn@ctd.uscourts.gov"

# Default MySQL Settings
ENV MYSQL_ROOT_PASSWORD=123456 \
MYSQL_USER=dev \
MYSQL_PASSWORD=123456 \
MYSQL_DATABASE=eli 

COPY database_sample_data.sql /docker-entrypoint-initdb.d/database_sample_data.sql