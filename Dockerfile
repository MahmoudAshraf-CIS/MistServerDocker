FROM python:3.7
USER root
RUN curl -o - https://releases.mistserver.org/is/mistserver_64V3.0.tar.gz 2>/dev/null | sh
WORKDIR /usr/bin
ENTRYPOINT echo "n n" | MistController
EXPOSE 4242 8181 1935 554


