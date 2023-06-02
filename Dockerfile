FROM bullseye-slim:latest

RUN apt install --update freeradius freeradius-postgresql freeradius-ldap freeradius-utils 

RUN rm -rf /var/cache/apt/*

EXPOSE 1812/udp
EXPOSE 1813/udp

CMD ["radiusd","-f","-l", "stdout","-d","/etc/raddb"]
