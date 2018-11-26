# _GitLab Docker_ deployment
_GitLab_ Community Edition 11.0.0 is installed on host at **192.168.0.5** under **gitlab_admin** user.  


### _GitLab_ volumes
1. Configuration directory **/srv/gitlab/config** on host, mounted to **/etc/gitlab** inside the container.  
_GitLab_'s configuration file **gitlab.rb** is available at the configuration folder.   
2. Logs directory **/srv/gitlab/logs** on host, mounted to **/var/log/gitlab** inside the container.  
3. Data directory **/srv/gitlab/data** on host, mounted to **/var/opt/gitlab** inside the container.  
4. In order to sync host time and container time, we will do the following mounting:
`/usr/share/zoneinfo/Israel:/etc/localtime:ro`  


# Start _GitLab
To start _GitLab_, run the following command:  
`docker-compose up`  
_GitLab_ will start as a container named **gitlab**  

To get inside th running container, run the following command:  
`docker exec -it gitlab bash`  

_GitLab_ will be available o **gitlab.sq.l**.  

[_Portainer_](https://portainer.io/) containers dashboard, will be available on **192.168.0.5:9000**.  
