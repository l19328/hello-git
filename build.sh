#!/bin/bash
# we need to have openr:test and fib:test first ,import by hand
# and fibhandler in /bin  
docker run -itd --name openr1 --sysctl net.ipv6.conf.all.disable_ipv6=0 ezware/openrbuild bash
docker run -itd --name openr2 --sysctl net.ipv6.conf.all.disable_ipv6=0 ezware/openrbuild bash
docker run -itd --name openr3 --sysctl net.ipv6.conf.all.disable_ipv6=0 ezware/openrbuild bash

docker network create --subnet 12.13.14.0/24  --gateway=12.13.14.1 Net1
docker network create --subnet 12.13.15.0/24  --gateway=12.13.15.1 Net2
docker network create --subnet 12.13.16.0/24  --gateway=12.13.16.1 Net3
docker network create --subnet 12.13.17.0/24  --gateway=12.13.17.1 Net4

docker network connect Net1 --ip 12.13.14.2 openr1
docker network connect Net2 --ip 12.13.15.2 openr1
docker network connect Net2 --ip 12.13.15.3 openr2
docker network connect Net3 --ip 12.13.16.3 openr2
docker network connect Net3 --ip 12.13.16.4 openr3
docker network connect Net4 --ip 12.13.17.4 openr3

