DOCKER=docker
NAME=scipy

run:
	$(DOCKER) rm $(NAME)
	$(DOCKER) run -d -v $(shell pwd)/pages:/notebooks -p 8888:8888 -e "PASSWORD=test" --name $(NAME) greg45/scipy

start:
	$(DOCKER) start $(NAME)

stop:
	$(DOCKER) stop $(NAME)

attach:
	$(DOCKER) exec -it $(NAME) /bin/bash
ip:
	$(DOCKER) inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(NAME)
