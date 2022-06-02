FROM alpine:3.16

RUN apk update && apk add python3 py3-pip git

WORKDIR /srv/valorant-bot
RUN git clone https://github.com/staciax/Valorant-DiscordBot.git . \
  && pip3 install -r requirements.txt

RUN mkdir data && ln -s /srv/valorant-bot/data /var/valorant-bot

VOLUME /var/valorant-bot

RUN addgroup -g 1000 valorantbot \
    && adduser -u 1000 -G valorantbot -s /bin/sh -D valorantbot \
    && chown -R valorantbot:valorantbot /srv/valorant-bot

USER valorantbot

ENTRYPOINT ["python3"]
CMD ["./bot.py"]
