# _GitLab Docker_ deployment
_GitLab_ Community Edition 11.0.0 is installed on host at **192.168.0.5** under **gitlab_admin** user.  


### _GitLab_ volumes
Configuration file **gitlab.rb** available on host at **/srv/gitlab/config/**  

In order to sync host time and container time, we will do the following mounting:
`/usr/share/zoneinfo/Israel:/etc/localtime:ro`  


# Start _GitLab
To start _GitLab_, run the following command:
`docker-compose up`  
_GitLab_ will start as a container named **gitlab**  

To get inside th running container, run the folloeing command:
`docker exec -it gitlab bash`  

_GitLab_ will be available o **gitlab.sq.l**.  

[_Portainer_](https://portainer.io/) containers dashboard, will be available on **192.168.0.5:9000**.  
