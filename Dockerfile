FROM djfarrelly/maildev

RUN apk add --update \
    gcc \
    make \
    g++ \
    python \
  && rm -rf /var/cache/apk/*

WORKDIR /usr/src/app

ENV NODE_ENV production

RUN npm install node-gyp -g && \
    npm install iconv --save && \
    npm prune && \
    npm cache clean --force && \
    rm -rf /tmp/*
