local-docker-stack-up:
	@docker network create -d overlay portainer-ntw || true
	@docker stack up --compose-file docker-compose.yml frodo_portainer_stack

local-docker-stack-down:
	@docker stack rm frodo_portainer_stack
