FROM ruby:3.3.2-alpine

WORKDIR /tmp
RUN apk add --no-cache build-base libxml2-dev libxslt-dev
RUN gem install theme-check -v 1.12.0

CMD ["theme-check", "/tmp"]

