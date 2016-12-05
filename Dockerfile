FROM ruby:2.3.3

MAINTAINER gregor.afc@gamil.com

RUN apt-get update -qq && apt-get install -y build-essential

RUN apt-get install -y node.js

RUN makedir /ufo_app

COPY . /ufo_app

RUN cd /ufo_app; bundle install; rake db:create rake db:setup

EXPOSE 3000

CMD cd /ufo_app && rails s