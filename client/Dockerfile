FROM debian
RUN apt-get update && apt-get install curl -y && apt-get clean
COPY docker-entrypoint.sh .
ENTRYPOINT ["/docker-entrypoint.sh"]