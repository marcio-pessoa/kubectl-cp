FROM python:slim

COPY kubectl-cp /usr/local/bin

RUN apt update
RUN apt install -y kubernetes-client

WORKDIR /usr/local/bin

ENTRYPOINT ["./kubectl-cp"]
