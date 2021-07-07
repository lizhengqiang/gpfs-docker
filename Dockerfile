FROM golang:1.15

ADD ./gpfs /gpfs
ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /gpfs
RUN chmod +x /entrypoint.sh

WORKDIR /


EXPOSE 5001
EXPOSE 8080
VOLUME /app/data


CMD ["/entrypoint.sh"]
