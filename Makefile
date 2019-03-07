VERSION ?= 1.0.0
IMAGE ?= swmansion/elixir-fdk-aac

build:
	docker build -t $(IMAGE):$(VERSION) .
