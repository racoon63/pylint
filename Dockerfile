FROM python:3.8.2-alpine

WORKDIR /code

COPY pylintrc /etc/pylintrc
COPY requirements.txt /pylint/requirements.txt
COPY docker-entrypoint.sh /pylint/docker-entrypoint.sh

RUN pip3 install -r /pylint/requirements.txt

ENTRYPOINT [ "sh", "/pylint/docker-entrypoint.sh" ]