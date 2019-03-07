VERSION ?= 1.0.0
IMAGE ?= membrane/elixir-fdk-aac

build:
	docker build -t $(IMAGE):$(VERSION) .
