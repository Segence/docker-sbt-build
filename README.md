Segence SBT build container
===========================

A Docker container to build SBT-based projects. It is based on the [scala-sbt](https://hub.docker.com/r/hseeberger/scala-sbt/) Docker image.

It comes with:
- Docker and Docker Compose
- The [make](https://www.gnu.org/software/make/) utility

It can be used as a build image in CI tools.

It ships the following component versions:
- JDK 8u181
- Scala 2.12.7
- SBT 1.2.6

Run in interactive mode to build from the current directory: `docker run -v $(pwd):/build -it segence/sbt-build:0.1.1 bash`
