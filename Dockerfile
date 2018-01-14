FROM nvidia/cuda:9.1-devel

RUN apt-get -y update && \
    apt-get -y install \
        git \
        automake \
        libssl-dev \
        libcurl4-openssl-dev

RUN cd /tmp/ && \
    git clone https://github.com/tpruvot/ccminer.git && \
    cd /tmp/ccminer && \
    ./autogen.sh && \
    ./configure --with-cuda=/usr/local/cuda && \
    make && \
    mv /tmp/ccminer/ccminer /usr/local/bin/ccminer && \
    rm -rf /tmp/*

ENTRYPOINT ["ccminer"]

CMD ["--help"]