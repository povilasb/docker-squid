# About

This repo contains Docker files to build container for squid 3 running on
Debian 8.

There is a helper makefile to build docker image and container locally
```bash
$ make image
$ make container
```

Then you can see the access logs as you do the request:
```bash
$ make viewlogs

{"time": "1564122441617", "proxy_ip": "172.17.0.2", "client": "-", "client_ip": "172.17.0.1", "target": "httpbin.org:443", "traffic": 5868, "status_code": 200, "user_agent": "curl/7.61.1", "request_method": "CONNECT"}
```

Test it with:
```bash
$ curl --proxy localhost:3128 https://httpbin.org/ip -v
```
