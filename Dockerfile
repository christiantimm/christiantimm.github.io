FROM ruby:2.7.2

WORKDIR /usr/src/app

COPY . .

RUN gem install bundler -v 2.2.4 \
    && bundle install \
    && jekyll build

EXPOSE 4000

CMD [ "jekyll", "serve" , "--host" , "0.0.0.0"]