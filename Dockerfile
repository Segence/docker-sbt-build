FROM hseeberger/scala-sbt:8u181_2.12.7_1.2.6

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    dirmngr

RUN echo 'deb https://apt.dockerproject.org/repo debian-stretch main' >> /etc/apt/sources.list
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys F76221572C52609D

RUN apt-get update && apt-get install -y \
    make \
    docker-engine \
    python-pip \
&& rm -rf /var/lib/apt/lists/*

RUN curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

RUN pip install awscli --upgrade
