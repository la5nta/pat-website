FROM alpine
RUN mkdir /hugo && wget -c https://github.com/gohugoio/hugo/releases/download/v0.41/hugo_0.41_Linux-64bit.tar.gz -O - | tar -C /bin -xz
WORKDIR /src
