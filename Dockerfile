FROM python:2.7

RUN apt update
RUN apt install python-swiftclient python-keystoneclient -y

COPY README.md /

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]