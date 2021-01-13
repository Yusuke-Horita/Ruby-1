FROM ruby:2.5.7

RUN apt-get update -qq && \
		apt-get install -y build-essential \
                       libpq-dev \
                       nodejs \
                       vim

RUN mkdir /includes_app

WORKDIR /includes_app

COPY Gemfile /includes_app/Gemfile
COPY Gemfile.lock /includes_app/Gemfile.lock

RUN gem install bundler
RUN bundle install

COPY . /includes_app
