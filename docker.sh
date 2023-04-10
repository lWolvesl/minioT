#!/bin/bash

docker run -itd --name minio \
    --publish 9000:9000 \
    --publish 9001:9001 \
    --env MINIO_FORCE_NEW_KEYS="yes" \
    --env MINIO_ROOT_USER="test" \
    --env MINIO_ROOT_PASSWORD="Kx123456" \
    --volume "$(pwd)/data:/data" \
    bitnami/minio:latest