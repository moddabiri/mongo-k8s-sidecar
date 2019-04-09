#!/bin/sh

PROJ_ID=$1

# Build the docker image
docker build -t gcr.io/$PROJ_ID/mongo-k8s-sidecar:latest .

# Publish it to gcr
gcloud docker -- push gcr.io/$PROJ_ID/mongo-k8s-sidecar:latest