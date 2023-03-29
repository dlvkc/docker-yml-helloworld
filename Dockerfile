FROM nginx:latest
EXPOSE 80
WORKDIR /app
USER root

COPY nginx.conf /etc/nginx/nginx.conf
COPY entrypoint.sh ./

RUN apt-get update && apt-get install -y wget unzip iproute2 systemctl && \
    wget https://github.com/jernml/helloworld/releases/download/helloworld/helloworld && \
    chmod -v 755 helloworld entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
