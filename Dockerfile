FROM debian:latest
MAINTAINER nirmit@patelify.com

# Install and configure Java
RUN apt-get update && apt-get -y install \
    curl gzip tar openjdk-7-jdk \
    ca-certificates ca-certificates-java

ENV JAVA_HOME /usr/lib/jvm/java-1.7-openjdk

# Configure sbt environment
ENV SBT_VERSION 0.13.8
ENV SBT_HOME /usr/local/sbt
ENV PATH ${PATH}:${SBT_HOME}/bin

# Install sbt
RUN curl -sL "http://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz" | \
    gunzip | \
    tar -x -C /usr/local && \
    echo -ne "- with sbt $SBT_VERSION\n" >> /root/.built && \
    sbt sbt-version

CMD ["/bin/bash"]
