FROM apache/nifi:latest
LABEL maintainer="fpsimonee@gmail.com"

USER root

RUN mkdir .aws

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

RUN unzip awscliv2.zip

RUN ./aws/install

#RUN aws --version

USER nifi

COPY ./aws-credentials/credentials .aws/
COPY ./build/*.nar /opt/nifi/nifi-current/lib/
EXPOSE 8080