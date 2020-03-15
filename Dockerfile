FROM ruby:2.6.2-stretch
COPY . /application
WORKDIR /application

RUN bundle install --deployment --without development test 
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get -y install nodejs
ENTRYPOINT ['./entrypoint.sh']
