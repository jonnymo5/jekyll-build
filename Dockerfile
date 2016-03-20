FROM ruby:2.1

MAINTAINER John Moberly

RUN curl -sL https://deb.nodesource.com/setup_5.x | bash
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install --assume-yes openjdk-7-jre

CMD [ "irb" ]
