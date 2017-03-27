FROM ruby:2.3.3-slim
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /simple_api
WORKDIR /simple_api
ADD Gemfile /simple_api/Gemfile
ADD Gemfile.lock /simple_api/Gemfile.lock
RUN bundle install
ADD . /simple_api
