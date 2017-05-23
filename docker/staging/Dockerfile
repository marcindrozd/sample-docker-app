FROM ruby:2.4.1

RUN apt-get update && apt-get install -y 
  build-essential \
  nodejs
RUN gem install puma

ENV RAILS_ENV staging
ENV RAILS_MAX_THREADS 2
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true
ENV REDIS_URL redis://redis:6379/0
