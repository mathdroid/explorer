REGISTRY=trustory
IMAGE=explorer


docker-build: pull-submodule
	docker build . -t $(REGISTRY)/$(IMAGE)

push: docker-build
	docker push $(REGISTRY)/$(IMAGE)

pull-submodule: 
	git submodule init && git submodule update

.PHONY: build pull-submodule push
