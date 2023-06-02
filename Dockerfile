FROM debian:bullseye-slim

RUN apt update && apt install freeradius freeradius-postgresql freeradius-ldap freeradius-utils -y

RUN rm -rf /var/cache/apt/*

EXPOSE 1812/udp
EXPOSE 1813/udp

CMD ["freeradius","-f","-l", "stdout"]