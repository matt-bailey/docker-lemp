# docker-lemp

> Simple Docker LEMP stack

Just for me, it probably won't work for you...

## Includes

- Nginx
- PHP7
- Unison (for fast fs syncing)

For performance I'm using `bind-address` to connect to my host machine's MySQL database from the docker container.

## Requirements

```
brew install unison
brew install fswatch
brew install socat
```

## Start or stop the 'things'

Assumes you are one level up from the `docker/` dir and your webroot is `site/`. If not, modify the files accordingly.

```
./docker/startdocker
./docker/stopdocker
```
