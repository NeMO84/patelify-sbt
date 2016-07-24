FROM alpine:latest

MAINTAINER nirmit@patelify.com

# Install and configure Java
RUN apk add --update bash curl gzip tar openjdk7 \
  && rm -rf /var/cache/apk/*
ENV JAVA_HOME /usr/lib/jvm/java-1.7-openjdk

# Configure sbt environment
ENV SBT_VERSION 0.13.8
ENV SBT_HOME /usr/local/sbt
ENV PATH ${PATH}:${SBT_HOME}/bin

# Install sbt
RUN curl -sL "http://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz" | gunzip | tar -x -C /usr/local && \
    echo -ne "- with sbt $SBT_VERSION\n" >> /root/.built
