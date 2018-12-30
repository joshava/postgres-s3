FROM python:alpine

ENV POSTGRES_HOST postgres
ENV POSTGRES_DATABASE postgres
ENV POSTGRES_PORT 5432
ENV POSTGRES_USER user
ENV POSTGRES_PASSWORD password
ENV POSTGRES_OPTIONS ""

ENV S3_ACCESS_KEY_ID s3_id
ENV S3_SECRET_ACCESS_KEY s3_key
ENV S3_BUCKET s3_bucket
ENV S3_REGION us-east-1
ENV S3_ENDPOINT ""
ENV S3_PREFIX ""

ENV PERIOD "* 0 * * *"
ENV RUN ""


RUN apk add --no-cache bash && \
    apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main postgresql-client && \
    pip install awscli

COPY root/ /

WORKDIR /backup

RUN chmod -R +x /backup

CMD ./run.sh
