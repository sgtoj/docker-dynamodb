# Docker DynamoDB

A very basic Docker DynamoDB container with [awscli](https://aws.amazon.com/cli/) installed.

## Supported Tags

* `latest` using version **dynamodb_local_2017-02-16.tar.gz**
* `2017-02-16` using version **dynamodb_local_2017-02-16.tar.gz**

## Usage

Start Up w/ Specific Port Exposed

```shell
docker run -d -p 8000:8000 sgtoj/dynamodb:latest
```

Start Up w/ a Mount for Persistent Data

```shell
docker run -d -v /host/data/mount/point:/data sgtoj/dynamodb:latest
```

## Info

DynamoDB Local now comes with a free and very helpful web-based user interface
known as the DynamoDB JavaScript Shell[*...*](https://aws.amazon.com/blogs/aws/sweet-treats-for-dynamodb-users/)

```shell
http://localhost:8000/shell
```
