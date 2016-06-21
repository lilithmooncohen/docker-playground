# Docker  Playground

[![asciicast](https://asciinema.org/a/49680.png)](https://asciinema.org/a/49680)

## Run
```
git clone https://github.com/ryanckoch/docker-playground.git
cd docker-playground
./initialize.sh
```

## Play Around
```
docker service create --name redis redis:3.0.6
docker service ls
docker service update redis --replicas 3 --update-delay 10s --update-parallelism 1
docker service update redis --image redis:3.0.7
