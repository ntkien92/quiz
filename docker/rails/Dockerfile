FROM ruby:2.3.1

RUN apt-get update
RUN apt-get install -y vim wget curl git mysql-client build-essential libpq-dev --no-install-recommends sysv-rc-conf 
RUN apt-get install -y zsh
RUN apt-get install -y nodejs
RUN rm -rf /var/lib/apt/lists/*
RUN gem install rails
RUN gem install rdoc-data; rdoc-data --install

# instal Oh-my-zsh
RUN wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | zsh || true

COPY .zshrc /root/.zshrc

WORKDIR /usr/src/app
