## Install Server

```sh
git clone https://github.com/joriswvanrijn/pixel-paradise-0.1
cd server
cp .env.example .env # and set CF API KEY (use $$ in key instead of $ to correctly escape key)
docker compose up # that's it! wait a bit for the first time
```

## Install Client

Import .zip into forge and let's goo

## Development

- Create modpack in CurseForge
- Export profile, add to client folder
- Run `./client_to_server.sh`
- Check if `CF_EXCLUDE_MODS` needs to be updated (in `docker-compose.yml`)

## Docs

https://docker-minecraft-server.readthedocs.io/en/latest/
