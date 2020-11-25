docker rm -f chutkulabot
source /home/ubuntu/Repos/homelab/.env
docker container run --name chutkulabot -d angadsharma1016/chutkulabot:latest
