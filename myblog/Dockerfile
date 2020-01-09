FROM ruby:2.5.7

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs default-mysql-client vim

RUN mkdir /myblog

WORKDIR /myblog

COPY Gemfile /myblog/Gemfile
COPY Gemfile.lock /myblog/Gemfile.lock

RUN gem install bundler
RUN bundle install

COPY . /myblog
