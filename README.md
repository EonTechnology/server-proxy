# Peer security complex
The security complex is designed to protect peer from excessive activity in the network. It can’t fully protect the peer from all kinds of attacks, but from excessive activity will protect.

## Getting Started
### Install first:
* docker
* docker-compose

### Installation:
* `git clone ...`
* `cd ...`
* `git submodule init`
* `git submodule update`

### Setting
To participate in the generation of blocks, before the start of the peer is need to set the environment variable `SECRET_SEED` with the SEED account, on whose behalf the blocks will be generated.

The environment variables for docker-compose also can be specified in the `.env` file (located in the current working directory):
```
SECRET_SEED=...
```

### Launching
Peer will be launched automatically together with the security complex.

Simple launching:
```
docker-compose up
```

Launching with `SECRET_SEED` specified directly in the start command:
```
SECRET_SEED=... docker-compose up
```

Launching in the background:
```
docker-compose up -d
```

### Updating peer-server
To update the code base of the peer, is necessary to execute in the project folder:
```
git submodule update
```