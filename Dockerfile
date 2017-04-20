# alpine based images silently fails or hangs

FROM  openjdk:8
MAINTAINER Brian Ojeda <docker@sgtoj.codes>
EXPOSE 8000
WORKDIR /dynamodb

ENV DB_VERSION=2017-02-16

# Download and install the binaries to WORKDIR
RUN wget -q -O dynamodb_local.tar.gz http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_${DB_VERSION}.tar.gz && \
    tar xzf dynamodb_local.tar.gz && \
    rm dynamodb_local.tar.gz

RUN apt-get update && \
    apt-get install -y awscli

RUN mkdir -p /data
VOLUME /data

ENTRYPOINT ["/usr/bin/java", "-Djava.library.path=./DynamoDBLocal_lib", "-jar", "DynamoDBLocal.jar"]
CMD ["-dbPath","/data"]