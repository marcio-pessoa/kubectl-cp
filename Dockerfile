FROM python:slim

COPY kubectl-cp /usr/local/bin

RUN apt update
RUN apt install -y kubernetes-client

CMD [ "/usr/local/bin/kubectl-cp", "--help" ]
