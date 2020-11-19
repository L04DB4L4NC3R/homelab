#!/bin/bash

# Music Sync
docker stack deploy -c homelab.yml music-sync.yml

# NextCloud Stack
docker stack deploy -c nextcloud.yml nextcloud

# Telegram servers
docker stack deploy -c telegram-servers.yml telegram-servers

# Pihole Install
curl -sSL https://install.pi-hole.net | bash
