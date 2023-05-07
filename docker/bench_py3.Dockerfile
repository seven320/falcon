FROM python:3.8-slim
MAINTAINER Falcon Framework Maintainers

RUN echo 'deb http://deb.debian.org/debian testing main' >> /etc/apt/sources.list \
    && apt-get update && apt-get install --no-install-recommends -y gcc g++

RUN pip install --no-cache-dir falcon
RUN pip install --no-cache-dir bottle "django" flask
COPY ./benchmark.sh /benchmark.sh

CMD /benchmark.sh
