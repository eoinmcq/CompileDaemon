# compiledaemon

Docker image for running the golang CompileDaemon against code mounted in a volume without needing to build any extra images.

## compiledaemon

Version: 1.2.1

* https://github.com/githubnemo/CompileDaemon

## Go

Version: 1.15.7-alpine

* https://hub.docker.com/_/golang

## Build

```
docker build -t=emcquill/compiledaemon:latest .
```

## Running

### docker

```
docker run --rm -w="/app" --mount type=bind,source="$(pwd)",target=/app emcquill/compiledaemon:latest CompileDaemon --build="go build -o binary" --command="./binary"
```

### docker-compose

```
compiledaemon:
  image: emcquill/compiledaemon:latest
  working_dir: /app
  volumes:
    - ./:/app
  ports:
    - 8088:8088
  command: CompileDaemon --build="go build -o binary" --command="./binary"
```