FROM ruby:2.5.7

RUN apt-get update -qq && \
apt-get install -y build-essential \
									 libpq-dev \
									 nodejs \
									 default-mysql-client \
									 vim

RUN mkdir /postal_code_search

WORKDIR /postal_code_search

COPY Gemfile /postal_code_search/Gemfile
COPY Gemfile.lock /postal_code_search/Gemfile.lock

RUN bundle install

COPY . /postal_code_search