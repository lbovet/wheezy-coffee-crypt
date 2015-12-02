FROM debian:wheezy
RUN apt-get update && apt-get install -y wget rsync cryptsetup npm && npm install -g coffee-script restify shelljs
RUN wget -O /usr/local/bin/dlgrab https://github.com/aidanhs/dlgrab/releases/download/0.2/dlgrab-linux-x64
