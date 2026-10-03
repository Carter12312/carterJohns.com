Little cheat sheet if you forget how to start the mariaDB container
compose handles most of the work

Check make file for shortcuts


| Goal | Command |
|---|---|
| Start for the first time | `docker compose up -d` |
| Stop temporarily | `docker compose stop` |
| Restart stopped container | `docker compose start` |
| Stop and remove container | `docker compose down` |
| Recreate from configuration | `docker compose up -d` |
| View status | `docker compose ps` |
| View logs | `docker compose logs database` |


docker command to start interactive db session:
docker compose exec database \
  mariadb \
  -u bird_app \
  -p \
  bird_app_local

or equivallanlty:
docker compose exec database sh -c \
  'exec mariadb --user="$MARIADB_USER" --password="$MARIADB_PASSWORD" "$MARIADB_DATABASE"'

docker command to make migrations:
docker compose exec -T database sh -c \
  'mariadb --user="$MARIADB_USER" --password="$MARIADB_PASSWORD" "$MARIADB_DATABASE"' \
  < sql_migrations/migration_1.sql 
