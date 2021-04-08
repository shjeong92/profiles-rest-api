<<<<<<< HEAD
FROM python:3.9-alpine
=======
FROM python:3.7-alpine
>>>>>>> 10442a0a11640d94a97911ab2a442feeab7f5c4f
LABEL maintainer = "Sang"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client
RUN apk add --update --no-cache --virtual .tmp-build-deps \
        gcc libc-dev linux-headers postgresql-dev
RUN pip install -r /requirements.txt
RUN apk del .tmp-build-deps
<<<<<<< HEAD

=======
>>>>>>> 10442a0a11640d94a97911ab2a442feeab7f5c4f
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
