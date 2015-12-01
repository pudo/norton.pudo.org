
checkout:
    git reset --hard HEAD
    git pull
    git submodule init
    git submodule update --remote

build: checkout
    docker-compose build
