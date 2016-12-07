FROM ruby:2.1.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /ofn
WORKDIR /ofn

ENV VERSION v1.8.6

RUN wget https://github.com/openfoodfoundation/openfoodnetwork/archive/${VERSION}.tar.gz -O ofn.tgz
RUN tar xfzv ofn.tgz --strip-components=1

RUN bundle install

