DOCKER=docker
NAME=scipy

run:
	$(DOCKER) rm $(NAME)
	$(DOCKER) run -d -v /home/greg/notebooks:/notebooks -p 8080:8888 -e "PASSWORD=test" --name $(NAME) scipyserver

start:
	$(DOCKER) start $(NAME)

stop:
	$(DOCKER) stop $(NAME)

attach:
	$(DOCKER) exec -it $(NAME) /bin/bash
