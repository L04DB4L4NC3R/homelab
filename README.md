## HomeLab
A full docker swarm config file for setting up my home lab.

* [Chutkulabot Telegram Bot for Jokes](https://github.com/L04DB4L4NC3R/chutkula-bot)
* [PiHole DNS Adblocker](https://github.com/L04DB4L4NC3R/chutkula-bot)
* [Music Playlist Sync](https://github.com/spotDL/spotify-downloader)
* [NextCloud Setup](https://nextcloud.com/)

<br>

### Installation

* Download docker

```sh
curl -sSL get.docker.com | sh
```

* Initialize docker swarm

```sh
docker swarm init
```

* Copy and populate environment vars

```sh
cp sample.env .env
```

* Deploy!

```sh
# HomeLab Main
docker stack deploy -c docker-stack.yml homelab

# NextCloud Stack
docker stack deploy -c nextcloud.yml nextcloud
```

<br>

### Debugging PiHole on Ubuntu

If you want to run pihole in ubuntu then disable the automatic dynamic DNS resolving service:

```sh
sudo systemctl disable --now systemd-resolved
```

Then change DNS to something like `nameserver 1.1.1.1` in `/etc/resolv.conf`
