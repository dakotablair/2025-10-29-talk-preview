# AID Seminar 2025-10-29

## Usage

```sh
docker build \
    --format docker \
    -f Dockerfile \
    -t aid-2025-10-29
```

```sh
docker run --rm -it
    --privileged \
    -v $(pwd):$(pwd) \
    --name aid-run \
    aid-2025-10-29
```
