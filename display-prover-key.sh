#!/usr/bin/env bash
set -e

sudo docker run -it -v ./data/prover:/var/lib/gevulot:z gevulot:latest show public-key --key-file /var/lib/gevulot/prover.pki