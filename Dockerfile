FROM apache/nifi:latest
COPY ./nifi-awesomeprocessor/nifi-awesomeprocessor-nar/target/nifi-awesomeprocessor-nar-1.0.0.nar /opt/nifi/nifi-current/lib/
EXPOSE 8080