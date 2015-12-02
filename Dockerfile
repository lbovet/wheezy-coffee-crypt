FROM debian:wheezy
RUN apt-get update && apt-get install -y wget curl rsync cryptsetup && curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
RUN apt-get install nodejs && ln -s /usr/bin/nodejs /usr/bin/node && npm install -g coffee-script restify shelljs
RUN wget -O /usr/local/bin/dlgrab https://github.com/aidanhs/dlgrab/releases/download/0.2/dlgrab-linux-x64
