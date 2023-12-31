FROM ruby:3.3.0-alpine

LABEL version="1.0.0"
LABEL repository="https://github.com/lumiscosity/jekyll-action"
LABEL homepage="https://github.com/lumiscosity/jekyll-action"
LABEL maintainer="lumiscosity <averyrudelphe@gmail.com>"

RUN apk add --no-cache git build-base

COPY LICENSE README.md /

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
