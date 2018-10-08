FROM lucee/lucee5:5.0.1.85

LABEL author="Henry Quinn <henryquinniv@gmail.com>"

# Documentation on Lucee Dockerfile's is here:
#   https://github.com/lucee/lucee-dockerfiles

# TOMCAT CONFIGS --> OPTIONAL to implement if you need custom Tomcat config.
COPY config/lucee/setenv.sh /usr/local/tomcat/bin/

# Lucee server configs --> OPTIONAL
COPY config/lucee/lucee-web.xml.cfm /opt/lucee/web/

# COPY IN a prepared Lucee server XML file --> OPTIONAL
COPY config/lucee/lucee-server.xml /opt/lucee/server/lucee-server/context/

# Default connection to a local MySql database.
ENV ELI_DSN_DRIVER=MySQL \
  ELI_DSN_CLASS=org.gjt.mm.mysql.Driver \
  ELI_DSN_CONNECTIONSTRING=jdbc:mysql://eli-db:3306/eli?useUnicode=true&characterEncoding=UTF-8&useLegacyDatetimeCode=true \
  ELI_DSN_DATABASENAME=eli \ 
  ELI_DSN_USERNAME=root \
  ELI_DSN_PASSWORD=123456 \
  LUCEE_TIMEZONE=America/New_York

# copy code folder to /var/www
COPY code/ /var/www/