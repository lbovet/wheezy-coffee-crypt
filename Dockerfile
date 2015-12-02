FROM debian:wheezy
ADD dlgrab /usr/local/bin/dlgrab
RUN apt-get update && apt-get install -y rsync cryptsetup npm && npm install -g coffee-script restify
