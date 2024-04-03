#!/usr/bin/env bash
set -e

sudo docker run -it -v ./data/prover:/var/lib/gevulot:z gevulot-cli:latest --keyfile /var/lib/gevulot/prover.pki generate-key