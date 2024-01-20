# Nextcloud-aio Community Engineered Enterprise Edition (nc-aio-ceee) 

## Install `docker` on your host system

```bash
curl -fsSL https://get.docker.com | sudo sh
```

## Add the current user to `docker` group 

This will help you to execute `docker` command without  `sudo`

```bash
sudo usermod -aG docker $USER
```

##  Update user's group access 

```bash
newgrp docker
```
`Note:` To update your group access persistently, log off and login back again.
 
## Install `docker-compose` command

```bash
sudo apt install docker-compose
```
## Deploy Portainer BE Management Node 

We install Portainer BE on Ubuntu `22.04 LTS` 

### Reference

[Install Portainer BE with Docker on Linux](https://docs.portainer.io/start/install/server/docker/linux) 

- First, create the volume that Portainer Server will use to store its database:

  ```bash
  docker volume create portainer_data
  ```

- Then, download and install the Portainer Server container:

  ```bash
  docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data portainer/portainer-ee:latest
  ```


