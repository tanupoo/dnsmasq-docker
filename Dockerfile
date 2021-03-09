FROM alpine:3.12
RUN apk add dnsmasq=2.83-r0
CMD ["/usr/sbin/dnsmasq", "-d"]
