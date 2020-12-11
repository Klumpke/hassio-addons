ARG BUILD_FROM
FROM $BUILD_FROM

MAINTAINER "Alex <ualex73@gmail.com>"

WORKDIR /usr/src/app

COPY run.sh s0pcm-reader.py requirements.txt configuration.yaml.example ./

RUN pip install --no-cache-dir -r requirements.txt && \
    mkdir /config

CMD [ "/bin/sh", "./run.sh" ]