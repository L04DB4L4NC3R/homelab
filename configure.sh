#!/bin/bash

# HomeLab Main
docker stack deploy -c homelab.yml homelab

# NextCloud Stack
docker stack deploy -c nextcloud.yml nextcloud

# Pihole Install
curl -sSL https://install.pi-hole.net | bash
