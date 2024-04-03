# Gevulot How-to

## Steps

* `build-gevulot-crates.sh` - Create the gevulot binaries
* `build-gevulot.sh` - Create the gevulot Docker image
* `build-gevulot-cli.sh` - Create the gevulot-cli Docker image
* `create-node-key.sh` - Create the Gevulot Node Key
* `create-prover-key.sh` - Create the Gevulot Prover Key
* `display-node-public-key.sh` - Display the Gevulot Node Public Key
* `display-prover-public-key.sh` - Display the Gevulot Prover Public Key
* `run.sh` - Start the Gevulot Node

* Whitelist both public keys: 
  * `sudo docker exec -it gevulot_node_1 /gevulot peer 047925563dec5a4599bee153150638941ef4db8cd45acf803c6f683315b6e4815514fa5baae752e262ecc053ae12ec08854837da82ea36cc0c2d6ae17e696924bf whitelist`
  * `sudo docker exec -it gevulot_node_1 /gevulot peer 04e56589098957635019ea645fd166dbdb99dcadc03563b5d774da41274d4a06d9cfb5615e5a0ee30d43468f40913bc31cd5b4c59a7f7305d19eb1b1c0919566eb whitelist`

## Debugging

### Vsock enabled?

```bash
$ sudo modprobe vhost_vsock

$ lsmod | grep vsock
vhost_vsock                          24576  0
vmw_vsock_virtio_transport_common    32768  1 vhost_vsock
vsock                                36864  2 vmw_vsock_virtio_transport_common,vhost_vsock
vhost                                49152  2 vhost_vsock,vhost_net

$ file /dev/vsock
/dev/vsock: character special (10/59)
$ file /dev/vhost-vsock
/dev/vhost-vsock: character special (10/241)
```