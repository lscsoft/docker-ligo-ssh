FROM igwn/base:el7

LABEL name="Container for running GSI-enabled OpenSSH" \
      maintainer="Shawn Kwang <shawn.kwang@ligo.org>" \
      support="Reference Platform"

RUN yum -y update && \
    yum -y install ldg-client && \
    yum clean all

# Work around for seccomp-protected kernel keyring
# being inaccessible inside a container.
#
# See https://blog.tomecek.net/post/kerberos-in-a-container/
ENV KRB5CCNAME="FILE:/tmp/tgt"

COPY /entrypoint/startup /usr/local/bin/startup
ENTRYPOINT [ "/usr/local/bin/startup" ]
CMD ["ldas-grid.ligo.caltech.edu"]
