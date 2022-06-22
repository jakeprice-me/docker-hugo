## Run Hugo

```sh
docker run \
    --rm \
    --publish 1313:1313 \
    --volume $PWD/log:/home/hugo \
    --interactive --tty \
    hugo:0.101.0 server --bind 0.0.0.0
```
