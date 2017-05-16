FROM ruby:2.4.1
MAINTAINER marcin.drozd@netguru.co

RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs

ENV APP_PATH /sample-docker-app
RUN mkdir -p $APP_PATH

WORKDIR $APP_PATH

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . ./

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3000"]
