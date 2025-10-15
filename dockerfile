FROM ruby:3.4

RUN gem install bundler jekyll jekyll-feed

WORKDIR /app
