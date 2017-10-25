#!/bin/bash
docker run -d --name gitlab-runner --restart always \
    -v /opt/gitlab-runner/config:/etc/gitlab-runner \
    -v /opt/gitlab-runner/run/docker.sock:/var/run/docker.sock \
    gitlab/gitlab-runner:latest
