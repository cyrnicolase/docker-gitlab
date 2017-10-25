#!/bin/bash
docker run --detach \
    --hostname 192.168.2.6 \
    --publish 8089:80 --publish 2289:22 \
    --name gitlab \
    --restart always \
    --volume /opt/gitlab/config:/etc/gitlab \
    --volume /opt/gitlab/logs:/var/log/gitlab \
    --volume /opt/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest
