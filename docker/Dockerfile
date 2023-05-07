FROM python:3.8-alpine

MAINTAINER Falcon Framework Maintainers


RUN apk update && \
    apk --no-cache add \
    curl \
    tmux \
    git \
    make \
    vim \
    tree \
    gcc
    
RUN pip install --no-cache-dir falcon
RUN pip install --no-cache-dir bottle "django" flask
COPY ./benchmark.sh /benchmark.sh

CMD /benchmark.sh
