#!/bin/bash

# Add this script path to crontab -e
# -a Recursively goes through dirs and preserves permissions also
# -u Skips newer files on the backuphdd during the transfer
# -v Is verbose and shows progress
# -z Is for compression during transport
# -P is for pause and resume ability
rsync -auvzP /mnt/hdd /mnt/backuphdd
