FROM python:slim

COPY kubectl-cp /usr/local/bin

ENTRYPOINT [ "/usr/local/bin/kubectl-cp" ]
