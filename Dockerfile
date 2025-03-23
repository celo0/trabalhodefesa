FROM ubuntu:latest
RUN apt update -y \
    && apt install -y nginx 


EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]