# docker lookbusy

```bash
docker run -itd --name=lookbusy --restart=always \
    -e TZ=Asia/Singapore \
    -e CPU_UTIL=10-20 \
    -e CPU_CORE=1 \
    -e MEM_UTIL=15 \
    -e SPEEDTEST_INTERVAL=120 \
    adjscent/lookbusy
```