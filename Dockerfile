FROM ubuntu:precise
RUN echo deb http://archive.ubuntu.com/ubuntu/ precise main universe > /etc/apt/sources.list.d/precise.list
RUN apt-get update -q
RUN apt-get install -qy openvpn iptables socat curl git python-pcapy schedtool
RUN mkdir /home/maltrailworld
RUN git clone https://github.com/carlospolop/MaltrailWorld /home/maltrailworld/maltrailworld

ADD ./bin /usr/local/sbin
RUN chmod +x /usr/local/sbin/*

VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp 8080/tcp 8338/tcp

CMD start && run
