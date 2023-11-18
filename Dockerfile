FROM governmentpaas/cf-cli:latest

RUN apt-get install jq
ADD CA.crt /tmp/Ca.crt
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
