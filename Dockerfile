FROM ubuntu:18.04
#FROM fedora:29
COPY start.sh /tmp/start.sh
COPY workspace.yml /tmp
COPY roles /tmp
RUN cd /tmp/ && ./start.sh