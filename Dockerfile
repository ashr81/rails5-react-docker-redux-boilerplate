FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rails5-react-docker-redux-boilerplate
WORKDIR /rails5-react-docker-redux-boilerplate
COPY Gemfile /rails5-react-docker-redux-boilerplate/Gemfile
COPY Gemfile.lock /rails5-react-docker-redux-boilerplate/Gemfile.lock
RUN bundle install
COPY . /rails5-react-docker-redux-boilerplate
