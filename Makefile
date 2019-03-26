VERSION ?= latest
IMAGE ?= membrane/elixir-fdk-aac

build:
	docker build -t $(IMAGE):$(VERSION) .
