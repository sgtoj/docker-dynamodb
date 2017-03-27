# Docker DynamoDB

## Supported Tags

* `latest` using version **dynamodb_local_2017-02-16.tar.gz**
* `2017-02-16` using version **dynamodb_local_2017-02-16.tar.gz**

A very basic Docker DynamoDB container.

## Build or Pull

```shell
docker build -t docker-public/dynamodb
```

## Alternatively, the container can be pulled from Docker Registry

```shell
docker pull docker-public/dynamodb
```

## Web Shell

The dynamodb local jar besides providing a dynamodb setup for development
purposes also exposes a javascript shell for managing the tables

### Standard

```shell
http://localhost:8000/shell
```

## Direct Container Connection

```shell
http://my_dynamodb_container:8000/shell
```

## Usage

### Start Up

```shell
docker run -d docker-public/dynamodb
```

### Start Up /w All Ports Exposed to Host

```shell
docker run -d -P docker-public/dynamodb
```

### Start Up w/ Specific Port Exposed

```shell
docker run -d -p 8000:8000 docker-public/dynamodb
```

### Start Up w/ a Mount for Persistent Data

```shell
docker run -d -v /host/data/mount/point:/var/dynamodb_data docker-public/dynamodb
```

## Other

This repository was original forked from [`RyanRatcliff/docker_dynamodb`](https://github.com/RyanRatcliff/docker_dynamodb)