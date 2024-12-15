FROM --platform=$TARGETPLATFORM debian:11

COPY ./app /app

WORKDIR /app

RUN apt-get update \
    && apt-get install -y curl wget cron git cmake build-essential \
    && git clone https://github.com/flow2000/lookbusy.git \
    && curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash \
    && apt-get install -y speedtest \
    && cd lookbusy && chmod +x ./configure && ./configure && make && make install \
    && rm -rf /app/lookbusy && chmod +x /app/*.sh \
    && apt-get autoremove -y && apt-get autoclean && apt-get remove -y && apt-get clean

CMD [ "/app/docker-entrypoint.sh" ]

USER root