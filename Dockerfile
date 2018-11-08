FROM hseeberger/scala-sbt:8u181_2.12.7_1.2.6

RUN apt-get update && apt-get install -y \
    make \
    docker \
    docker-compose \
&& rm -rf /var/lib/apt/lists/*
