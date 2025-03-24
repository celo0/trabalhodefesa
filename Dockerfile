FROM ubuntu:latest
RUN apt update -y \
    && apt install -y nginx \
    && rm -rf /var/lib/apt/lists/*

ENV API_KEY=teste_dockle_api_key

EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]