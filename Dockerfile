FROM ruby:2.1

MAINTAINER John Moberly <jonnymo5@gmail.com>

LABEL Description="A container for building jekyll blogs and deploying to s3." \
      Base_Image="ruby:2.1"

RUN curl -sL https://deb.nodesource.com/setup_5.x | bash

RUN apt-get update &&                          \
    apt-get install -y nodejs openjdk-7-jre && \
    apt-get clean &&                           \
    rm -rf /var/lib/apt/lists/*

CMD [ "irb" ]
