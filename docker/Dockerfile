FROM ruby:slim

RUN apt-get update

RUN apt-get install -y \
      bundler \
      fonts-linuxlibertine \
      inotify-tools \
      libcairo2-dev \
      libpango1.0-dev \
      pdftk \
      poppler-utils

WORKDIR /app
ADD app/ /app
COPY Gemfile /app
#ADD . /app
RUN bundle install
