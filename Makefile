DOCKER_IMAGES = debian apache-php nginx nginx-php phpmyadmin mariadb jenkins

.PHONY: all $(DOCKER_IMAGES)

all: $(DOCKER_IMAGES)

$(DOCKER_IMAGES):
	$(MAKE) -C $@
	$(MAKE) -C $@ push

nginx: debian

nginx-php: nginx

apache-php: debian
