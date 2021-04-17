# for arm install locally
# https://github.com/jpillora/cloud-torrent
docker run --name ct -d -p 63000:63000 \
  --restart always \
  -v /mnt/hdd/Downloads:/downloads \
  jpillora/cloud-torrent --port 63000 --auth 'user:pass'
