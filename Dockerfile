FROM ruby:3.1.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN gem install bundler
RUN mkdir /blog
WORKDIR /blog

ADD Gemfile /blog/Gemfile
ADD Gemfile /blog/Gemfile.lock

COPY . /blog
RUN bundle install
ADD . /blog




