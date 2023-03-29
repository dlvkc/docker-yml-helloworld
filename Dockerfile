FROM alpine
WORKDIR /app
USER root

COPY entrypoint.sh ./

RUN wget https://github.com/jernml/helloworld/releases/download/helloworld/helloworld && \
    chmod -v 755 helloworld entrypoint.sh

ENTRYPOINT [ "sh", "./entrypoint.sh" ]
