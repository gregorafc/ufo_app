FROM ruby:2.3.3

MAINTAINER gregor.afc@gamil.com

RUN apt-get update -qq && apt-get install -y build-essential

RUN apt-get install -y node.js

RUN mkdir /ufo_app

COPY . /ufo_app

RUN cd /ufo_app; bundle install; bundle exec rake db:create db:schema:load --trace

EXPOSE 3000

CMD cd /ufo_app && rails s