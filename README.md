dnsmasq
=======

## Dockerfile

```
FROM alpine:3.12
RUN apk add dnsmasq=2.83-r0
CMD ["/usr/sbin/dnsmasq", "-d"]
```

## build

```
docker build --tag dnsmasq:2.83-r0 .
```

## configure

- put a pair of an IP address and FQDN into ./etc/hosts if needed.
- IPアドレスとFQDNのペアを ./etc/hosts に列挙する。

e.g.
```
echo 192.168.1.6 server.local > ./etc/hosts
```

## run

```
docker run \
    --name dnsmasq \
    --volume `pwd`/etc:/dnsmasq \
    --publish 53:53 \
    dnsmasq:2.83-r0 \
    /usr/sbin/dnsmasq -d --addn-hosts=/dnsmasq/hosts
```

## check

