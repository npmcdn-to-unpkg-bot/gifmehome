FROM ruby:2.2.3-slim

RUN apt-get update && apt-get install -y git-core build-essential libmagickwand-dev libpq-dev
RUN gem install foreman --no-ri

ADD Gemfile /app/
ADD Gemfile.lock /app/
ADD vendor/cache /app/vendor/cache
WORKDIR /app
RUN bundle install --local

# for standalone dev image
# ADD . /app

VOLUME ["/app"]

RUN apt-get install -y ImageMagick

