#!/usr/bin/env bash
set -e

sudo docker run -it -v ./data/node:/var/lib/gevulot:z gevulot-node:latest generate node-key