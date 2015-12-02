FROM debian:wheezy
RUN apt-get update && apt-get install -y curl rsync cryptsetup && curl -sL -o setup https://deb.nodesource.com/setup_5.x && bash setup && rm setup
RUN apt-get install nodejs && ln -s /usr/bin/nodejs /usr/bin/node && npm install -g coffee-script restify shelljs
RUN curl -sL -o /usr/local/bin/dlgrab https://github.com/aidanhs/dlgrab/releases/download/0.2/dlgrab-linux-x64
