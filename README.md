
# Beame behind a proxy

This repository is intended for testing purposes in order to test beame gatekeeper and insta-ssl behind a proxy.
Sligthly changed versions of the https://github.com/beameio/beame-gatekeeper-docker and of the https://github.com/jpetazzo/squid-in-a-can are used for it and are locally present.

### pre-requesites

	docker
	docker-compose

### building docker repositories
 	make build

### running environment (docker-compose)
	make envup         # docker-compose up 
	make envdown    # docker-compose down
    
In some environments docker-compose can be called docker.compose, make a symbolic link or change the Makefile accordingly

### accessing gatekeeper
From another bash run in the same folder

	make gatekeeper
	
### acessing insta-ssl
From another bash run in the same folder

	make insta-ssl

	
### whats next?

Both machines have then to be filled with the right beame token and configured from there on.

Don't forget to configure the http://squid:3128 proxy inside the gatekeeper ui in order to make it go via the proxy.