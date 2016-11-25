# docker-lemp

> Simple Docker LEMP stack

Just for me, it may not work for you. It's opinionated...

## Includes

- Nginx
- PHP7
- Unison (for fast fs syncing)

For performance I'm also using `bind-address` to connect to my host machine's MariaDB/MySQL database from the docker container, hence no MySQL container.

## Requirements

I'm on a Mac, so...

```
brew install unison
brew install fswatch
brew install socat
```

## Settings

A few environment variables are exposed in `.env`.

## Assumptions

Assumes there is a `sites/pub/` directory (if it's not, modify the files in this repo accordingly). Create it before you start up your containers:

```
mkdir -p site/pub
```

## Start or stop the 'things'

Assumes you are one level up from the `docker/` dir.

```
./docker/startdocker
./docker/stopdocker
```
