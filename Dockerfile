FROM debian:bullseye
ENV HUGO_VERSION=0.107.0
RUN apt-get update && \
    apt-get install -y wget && \
    addgroup hugo && \
    adduser hugo --gecos "" --disabled-password --ingroup hugo && \
    wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-amd64.deb --directory-prefix /tmp && \
    dpkg --install /tmp/hugo_${HUGO_VERSION}_linux-amd64.deb
USER hugo
RUN mkdir -p /home/hugo
WORKDIR /home/hugo
ENTRYPOINT ["hugo"]
