#!/usr/bin/env bash
set -e

sudo docker run --rm -it -v ./data/node:/var/lib/gevulot:z gevulot:latest show public-key --key-file /var/lib/gevulot/node.key