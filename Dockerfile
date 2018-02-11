FROM ruby:2.5
MAINTAINER ryz310@gmail.com

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install
WORKDIR /myapp
ADD . /myapp
