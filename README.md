# docker-lemp

> Simple Docker LEMP stack

Just for me, it may not work for you. It's opinionated...

## Includes

- Nginx
- PHP7
- Unison (for fast fs syncing)

For performance I'm also using `bind-address` to connect to my host machine's MariaDB/MySQL database from the docker container, hence no MySQL container.

## Requirements

[Docker](https://www.docker.com/), obviously.

I'm on a Mac, so...

```
brew install unison
brew install fswatch
brew install socat
```

## Setup

Create a `docker/.env` file using the sample provided, or add/edit the following environment variables manually:

```
PROJECT_DIR=/path/to/this/project
APP_DIR=/path/to/this/project/site
WEBROOT_DIR=/path/to/this/project/site/pub
```

Assumes there is a `site/pub/` directory. Create it before you start up your containers:

```
mkdir -p site/pub
```

## Start or stop the 'things'

Run one level up from the `docker/` dir.

```
./docker/start
./docker/stop
```
