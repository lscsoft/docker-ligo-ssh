# ligo/ssh

The `ligo/ssh` container is intended for members of the LIGO-Virgo Collaboartion
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
docker run -it ligo/ssh
```

or to UWM:

```
docker run -it ligo/ssh submit.ligo.uwm.edu
```

## Future work
A menu system like that found on `ssh.ligo.org` may be a way to make the
container more user-friendly.
