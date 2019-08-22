# ligo-ssh

The `ligo-ssh` container is intended for members of the LIGO-Virgo Collaboartion
who need to connect to grid resources via
[GSI-OpenSSH](https://github.com/globus/gsi-openssh) on platforms not supported
by gsissh.

## Running the container

The default entrypoint for the container is a script which prompts the user
for their LIGO.ORG username and provides it as an argument for the
`ligo-proxy-init` tool. By default, the entrypoint will connect to the primary
Caltech headnode, but it may be overridden as an argument at container
invocation. The container must be run as an interactive termainal, _e.g._
to connect to Caltech:

```
docker run -it containers.ligo.org/docker/ligo-ssh:stretch
```

or to UWM:

```
docker run -it containers.ligo.org/docker/ligo-ssh:stretch submit.ligo.uwm.edu
```

Notice the examples above use `stretch` or Debian v9 containers. You may also the the `el7` containers for Scientific Linux 7.

## Future work

A menu system like that found on `ssh.ligo.org` may be a way to make the
container more user-friendly.
