FROM apache/nifi:latest
COPY ./build/*.nar /opt/nifi/nifi-current/lib/
EXPOSE 8080