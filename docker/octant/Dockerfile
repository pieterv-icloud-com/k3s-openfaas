FROM alpine

ARG version=0.6.0

ENV DOWNLOAD_URL https://github.com/vmware/octant/releases/download/$vversion/octant_$version_Linux-64bit.tar.gz

RUN apk add --update curl tar && \
    curl -L $DOWNLOAD_URL | tar xz && apk del curl tar && \
    mv -f ./octant_$version_Linux-64bit/octant /usr/local/bin && \
    rm -rf ./octant_$version_Linux-64bit

EXPOSE 7777

COPY launch.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/launch.sh

ENTRYPOINT ["launch.sh"]