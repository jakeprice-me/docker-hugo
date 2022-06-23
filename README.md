# Hugo Docker Image

Builds a Docker image for [Hugo](https://gohugo.io/).

## Run Hugo

```sh
docker run \
    --rm \
    --publish 1313:1313 \
    --volume $PWD/<hugo-directory>:/home/hugo \
    --interactive --tty \
    jakepricedev/docker-hugo:0.101.0 server --bind 0.0.0.0
```

