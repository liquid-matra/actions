FROM governmentpaas/cf-cli:latest

ADD CA.crt /tmp/Ca.crt
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
