FROM alpine

ENV DOWNLOAD_URL https://github.com/vmware/octant/releases/download/v0.5.1/octant_0.5.1_Linux-64bit.tar.gz

RUN apk add --update curl tar && \
    curl -L $DOWNLOAD_URL | tar xz && apk del curl tar && \
    mv -f ./octant_0.5.1_Linux-64bit/octant /usr/local/bin && \
    rm -rf ./octant_0.5.1_Linux-64bit

COPY launch.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/launch.sh

ENTRYPOINT ["launch.sh"]