FROM alpine:3.10

LABEL version=v0.3.2

RUN apk add --no-cache openssh git rsync bash

COPY entrypoint.sh /entrypoint.sh

ENV SSH_AUTH_SOCK /tmp/ssh_agent.sock
ENTRYPOINT ["/bin/bash", "-c", "/entrypoint.sh"]
