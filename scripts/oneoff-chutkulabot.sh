docker rm -f chutkulabot
source /home/pi/Repos/homelab/conf/.env
docker container run --name chutkulabot -d angadsharma1016/chutkulabot:latest
