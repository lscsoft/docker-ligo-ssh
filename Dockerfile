FROM igwn/base:buster

LABEL name="Container for running GSI-enabled OpenSSH" \
      maintainer="Shawn Kwang <shawn.kwang@ligo.org>" \
      support="Reference Platform"

RUN apt-get update && \
    apt-get --assume-yes install ldg-client && \
    rm -rf /var/lib/apt/lists/*

COPY /entrypoint/startup /usr/local/bin/startup
ENTRYPOINT [ "/usr/local/bin/startup" ]
CMD ["ldas-grid.ligo.caltech.edu"]
