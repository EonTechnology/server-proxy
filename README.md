# Peer security complex
Please, be aware that this complex is designed to protect peers only from the excessive activity, and not from the all types of attacks.

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
To participate in block generation you need to set the environment variable `SECRET_SEED` before the start of the peer. The environment variable to be set with the SEED account on whose behalf the blocks will be generated.

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
To update the code base of the peer you need to execute the following command in the project folder:
```
git submodule update
```