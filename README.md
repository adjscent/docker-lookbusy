# docker-lookbusy [![Docker Image CI](https://github.com/adjscent/docker-lookbusy/actions/workflows/docker-image.yml/badge.svg)](https://github.com/adjscent/docker-lookbusy/actions/workflows/docker-image.yml)

Just another lookbusy docker.

https://hub.docker.com/repository/docker/adjscent/lookbusy/general

```bash
docker run -itd --name=lookbusy --restart=always \
    -e TZ=Asia/Singapore \
    -e CPU_UTIL=10-20 \
    -e CPU_CORE=1 \
    -e MEM_UTIL=15 \
    -e SPEEDTEST_INTERVAL=120 \
    adjscent/lookbusy
```