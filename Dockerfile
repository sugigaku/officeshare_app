FROM ruby:2.6.3
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y default-mysql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /officeshare_app

WORKDIR /officeshare_app

ADD Gemfile /officeshare_app/Gemfile
ADD Gemfile.lock /officeshare_app/Gemfile.lock

RUN bundle install
ADD . /officeshare_app