FROM ruby:2.5.1

RUN apt-get update -qq
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get install -y nodejs
RUN apt-get update && apt-get install yarn

RUN mkdir /rails5-react-docker-redux-boilerplate
WORKDIR /rails5-react-docker-redux-boilerplate
COPY Gemfile /rails5-react-docker-redux-boilerplate/Gemfile
COPY Gemfile.lock /rails5-react-docker-redux-boilerplate/Gemfile.lock
RUN bundle install
COPY . /rails5-react-docker-redux-boilerplate
