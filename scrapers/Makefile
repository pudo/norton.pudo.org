
all: build

checkout:
	git submodule init
	git submodule update --remote

build: checkout
	docker-compose build
