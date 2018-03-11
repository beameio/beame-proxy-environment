build:
	(cd beame && docker build -f Dockerfile.node6 -t node6 . && docker build -f Dockerfile.wetty -t "beame/wetty" . && docker build -t "beame/gatekeeper" . && docker build -f Dockerfile.insta -t "beame/insta-ssl" .)
	(cd squid && docker build -t "squid" .)

envup:
	docker-compose up

envdown:
	docker-compose down

gatekeeper:
	docker exec -it compose_gatekeeper /bin/bash

instassl:
	docker exec -it compose_instassl /bin/bash
