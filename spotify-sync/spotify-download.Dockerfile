FROM ubuntu

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y python3-pip

RUN pip3 install spotdl

RUN export PATH="$PATH:~/.local/bin"

RUN mkdir /app

WORKDIR /app

RUN mkdir /app/Music

COPY download-music.sh /app/download-music.sh

RUN chmod +x /app/download-music.sh

CMD ["bash", "/app/download-music.sh"]
