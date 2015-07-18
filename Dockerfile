#
# Oracle Java 8 Dockerfile
#
# https://github.com/dockerfile/java
# https://github.com/dockerfile/java/tree/master/oracle-java8
#

# Pull base image.
FROM ubuntu:14.04

RUN apt-get -y install software-properties-common 
# Install Java.
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

RUN add-apt-repository ppa:cwchien/gradle
RUN apt-get update
RUN apt-get -y install gradle
# Define working directory.
# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ADD code /code
WORKDIR /code
# Define default command.
#CMD ["echo","---------------------- starting ------------------"]
#CMD ["ls -al code"]
#CMD ["./gradlew"]
#CMD ["./gradlew", "tRW"]
