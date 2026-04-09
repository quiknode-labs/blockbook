#!/bin/bash
set -euo pipefail

IMAGE_NAME="ghcr.io/quiknode-labs/trezor/blockbook"
IMAGE_TAG="v0.5.0-zmq-fix"

echo "Building blockbook with ZMQ empty-binding fix..."
echo "Image: ${IMAGE_NAME}:${IMAGE_TAG}"
echo ""

sudo docker build -f Dockerfile.zmqfix -t "${IMAGE_NAME}:${IMAGE_TAG}" .

echo ""
echo "Build complete."
echo "Image: ${IMAGE_NAME}:${IMAGE_TAG}"
echo ""
echo "To push, run:"
echo "  echo \$GITHUB_TOKEN | sudo docker login ghcr.io -u USERNAME --password-stdin"
echo "  sudo docker push ${IMAGE_NAME}:${IMAGE_TAG}"
