sudo docker run --detach \
    --hostname 192.168.0.5 \
    --publish 443:443 --publish 80:80 --publish 2222:22 --publish 9418:9418\
    --name gitlab \
    --restart always \
    --volume /srv/gitlab/config:/etc/gitlab:Z \
    --volume /srv/gitlab/logs:/var/log/gitlab:Z \
    --volume /srv/gitlab/data:/var/opt/gitlab:Z \
    --volume /usr/share/zoneinfo/Israel:/etc/localtime:ro \
    gitlab/gitlab-ce:latest
