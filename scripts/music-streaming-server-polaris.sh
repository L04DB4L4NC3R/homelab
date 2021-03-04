docker run -t \
  --name=polaris \
  -p 5050:5050 \
  -v ~/Repos/spotify-downloader/music:/music \
  -v cache:/var/cache/polaris \
  -v data:/var/lib/polaris \
  ogarcia/polaris
