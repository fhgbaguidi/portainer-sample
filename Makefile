.DEFAULT_GOAL := local-docker-stack-up

local-docker-stack-up:
	@docker network create --driver overlay --attachable portainer_agent_network || true
	$(MAKE) local-docker-stack-down || true
	@docker stack up --compose-file docker-compose.yml frodo_portainer_stack

local-docker-stack-down:
	@docker stack rm frodo_portainer_stack
