docker run -t \
  --name=polaris \
  -p 5050:5050 \
  -v /mnt/hdd/Music:/music \
  -v cache:/var/cache/polaris \
  -v data:/var/lib/polaris \
  angadsharma1016/polaris:latest # for armv8
  #ogarcia/polaris:latest # for x86
