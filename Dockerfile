FROM ubuntu:latest
RUN apt update -y \
    && apt install -y nginx 

ENV API_KEY=123456
EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]