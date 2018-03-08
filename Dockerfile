FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /dashboardr
WORKDIR /dashboardr
COPY Gemfile /dashboardr/Gemfile
COPY Gemfile.lock /dashboardr/Gemfile.lock
RUN bundle install
COPY . /dashboardr