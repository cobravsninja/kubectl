FROM alpine
RUN apk --no-cache --update add curl && \
  curl -sL -o /usr/local/bin/kubectl \
  https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
  chmod +x /usr/local/bin/kubectl && apk del curl && rm /var/cache/apk/*
