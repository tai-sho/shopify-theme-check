FROM ruby:2.7.5-alpine

WORKDIR /tmp
RUN apk add --no-cache build-base libxml2-dev libxslt-dev
RUN gem install theme-check -v 1.9.2

CMD ["theme-check", "/tmp"]

