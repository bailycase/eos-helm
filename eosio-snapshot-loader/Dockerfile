# FROM alpine:latest

# RUN apk add --no-cache \
#     wget \
#     gzip \
#     zstd

# WORKDIR /app

# COPY entrypoint.sh .

# CMD ["sh", "entrypoint.sh"]

FROM alpine:latest

RUN apk add --no-cache \
    wget \
    gzip \
    zstd

COPY /eos.data /eos.data

ENTRYPOINT ["/bin/bash", "-c", "echo 'done'"]