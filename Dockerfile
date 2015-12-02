FROM debian:wheezy
RUN apt-get update && apt-get install -y curl rsync cryptsetup && curl -sL https://deb.nodesource.com/setup_5.x | bash -
RUN apt-get install nodejs && ln -s /usr/bin/nodejs /usr/bin/node && npm install -g coffee-script restify shelljs
RUN curl -o /usr/local/bin/dlgrab https://github.com/aidanhs/dlgrab/releases/download/0.2/dlgrab-linux-x64
