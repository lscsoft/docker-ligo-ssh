FROM containers.ligo.org/docker/base:el7

LABEL name="Container for running GSI-enabled OpenSSH" \
      maintainer="Shawn Kwang <shawn.kwang@ligo.org>" \
      date="20190822" \
      support="Reference Platform"

RUN yum -y update && \
    yum -y install ldg-client && \
    yum clean all

COPY /entrypoint/startup /usr/local/bin/startup
ENTRYPOINT [ "/usr/local/bin/startup" ]
CMD ["ldas-grid.ligo.caltech.edu"]
