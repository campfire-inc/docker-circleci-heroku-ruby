FROM circleci/ruby:2.4.1-node
LABEL maintainer="CAMPFIRE, Inc.<tech@camp-fire.jp>"

RUN sudo sh -c 'wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz -O heroku.tar.gz && \
  mkdir -p /usr/local/lib && \
  tar -xvzf heroku.tar.gz -C /usr/local/lib && \
  rm -f heroku.tar.gz && \
  ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku'

RUN heroku update
RUN sudo npm install -g yarn
