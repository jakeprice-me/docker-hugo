# Hugo Docker Image

Docker image for [Hugo](https://gohugo.io/) static site generator.

## Build

[GitHub Actions](https://github.com/jakeprice-dev/docker-hugo/actions) builds and pushes the image to [DockerHub](https://hub.docker.com/r/jakepricedev/docker-hugo) when a change to the repository is detected.

## Run Hugo

```sh
docker run \
    --rm \
    --publish 1313:1313 \
    --volume <hugo-directory>:/home/hugo \
    --interactive --tty \
    jakepricedev/docker-hugo:0.122.0 server --bind 0.0.0.0
```

