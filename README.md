# filebeat-container

docker container with filebeat:6.2.4 on alpine

use for shipping log with sidecar pattern

## Usage

0. prerequirment build image from Dockerfile
```shell
docker build -t filebeat .
```

1. you can use docker -e put env variable to replace logpath ,endpoint...

>  env var currently supprt:
>  - LOGPATH
>  - SCHEMA
>  - ELASTICHOST
>  - ELASTICINDEX

2. directly use docker -v to replace your filebeat.yml

```shell
docker run -v YOUR-filebeat.yml:/tmp/filebeat.yml filebeat
```

