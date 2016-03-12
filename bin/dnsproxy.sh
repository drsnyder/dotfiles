#!/bin/bash
socat udp4-recvfrom:8600,reuseaddr,fork \
    udp-sendto:`cat /etc/resolv.conf | grep nameserver | sed 's/nameserver \(\.*\)/\1/g'`:53
