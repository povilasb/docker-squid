image_tag = povilasb/squid

image:
	docker build -t $(image_tag) .
.PHONY: image

container:
	docker run --name povilasb-squid -d \
		--publish 3128:3128 \
		-t $(image_tag)
.PHONY: container
