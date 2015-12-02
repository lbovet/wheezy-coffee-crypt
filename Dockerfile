FROM debian:wheezy
RUN apt-get update && \
    apt-get install -y curl rsync cryptsetup-bin && \
    curl -sL -o setup https://deb.nodesource.com/setup_5.x && bash setup && rm setup && \
    apt-get install -y nodejs && npm install -g coffee-script restify shelljs && \
    curl -sL -o /usr/local/bin/dlgrab https://github.com/aidanhs/dlgrab/releases/download/0.2/dlgrab-linux-x64 && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ENV NODE_PATH=/usr/local/lib/node_modules
RUN coffee
