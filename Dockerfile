#FROM alpine:3.21.3
FROM alpine:3.10

RUN apk update && \
    apk add --no-cache \
    bash \
    curl \
    vim \
    openssl \
    git \
    tzdata

ENV TZ=America/Sao_Paulo
#ENV API_KEY=testedockle

EXPOSE 80 443

CMD ["sh"]