.PHONY: db db-up db-stop db-status db-migrate

db:
	docker compose exec database sh -c 'exec mariadb --user="$$MARIADB_USER" --password="$$MARIADB_PASSWORD" "$$MARIADB_DATABASE"'

db-up:
	docker compose up -d

db-stop:
	docker compose stop

db-status:
	docker compose ps

db-migrate:
	@echo -n "Enter desired migration path: " && read -r p; \
	docker compose exec -T database sh -c \
	'mariadb --user="$$MARIADB_USER" --password="$$MARIADB_PASSWORD" "$$MARIADB_DATABASE"' \
	< "$$p" 