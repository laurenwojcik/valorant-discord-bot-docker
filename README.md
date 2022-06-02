# Valorant Discord Bot Docker 

This runs [this discord bot](https://github.com/staciax/Valorant-DiscordBot) in Docker.

## Usage

This requires the environment variables `TOKEN` and `OWNER_ID`.
For example: 

In file .env 
```
TOKEN=your token
OWNER_ID=your id
```

Run:
```
docker run --rm --env-file .env -v /var/valorant-bot laurenwojcik/valorant-discord-bot
```
This will persist data in a docker volume. 
See the [bot repo](https://github.com/staciax/Valorant-DiscordBot) for additional information. :)