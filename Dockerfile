FROM python:3.7-alpine

RUN pip install --no-cache-dir python-swiftclient

COPY README.md /

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]