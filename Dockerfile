FROM ligo/base:jessie

LABEL name="Container for running GSI-enabled OpenSSH" \
      maintainer="Tom Downes <thomas.downes@ligo.org>" \
      date="20170710" \
      support="Reference Platform"

RUN apt-get update && \
    apt-get --assume-yes install ldg-client && \
    rm -rf /var/lib/apt/lists/*

COPY /entrypoint/startup /usr/local/bin/startup
ENTRYPOINT [ "/usr/local/bin/startup" ]
# user must supply 2 arguments: LIGO username and hostname to which to connect
