FROM ruby:2.5.7

RUN apt-get update -qq && \
apt-get install -y build-essential \
									 libpq-dev \
									 nodejs \
									 default-mysql-client \
									 vim

RUN mkdir /Basyolog_2

WORKDIR /Basyolog_2

COPY Gemfile /Basyolog_2/Gemfile
COPY Gemfile.lock /Basyolog_2/Gemfile.lock

RUN bundle install

COPY . /Basyolog_2