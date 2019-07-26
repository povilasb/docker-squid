image_tag = povilasb/squid
container = povilasb-squid

.PHONY: image
image:
	docker build -t $(image_tag) .

.PHONY: container
container:
	docker run --name $(container) -d \
		--publish 3128:3128 \
		-t $(image_tag)

.PHONY: viewlogs
viewlogs:
	docker exec -it $(container) tail -f /var/log/squid3/access.log
