#!/usr/bin/env bash
set -e

sudo rm -rf data/crates/
sudo docker build -t gevulot-crates -f Containerfile-gevulot-crates .
sleep 5
sudo docker run --rm -it -v ./data/crates:/tmp/crates:z gevulot-crates:latest cp -R /target/release/{gevulot,gevulot-cli,gevulot-e2e-tests,prover,verifier} /tmp/crates/
sudo docker image rm gevulot-crates:latest