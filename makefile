IMAGE_NAME=cr.coscene.cn/coscene/inspect-files
TAG=latest
CURRENT_DIR = $(shell pwd)

build:
		docker build -t $(IMAGE_NAME):$(TAG) .

push:
		docker push $(IMAGE_NAME):$(TAG)

run:
		docker run -v $(CURRENT_DIR)/input:/input $(IMAGE_NAME):$(TAG)