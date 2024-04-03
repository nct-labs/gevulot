# Gevulot How-to

## Steps

* `build-gevulot.sh` - Create the gevulot Docker image
* `build-gevulot-cli.sh` - Create the gevulot-cli Docker image
* `create-node-key.sh` - Create the Gevulot Node Key
* `create-prover-key.sh` - Create the Gevulot Prover Key
* `display-node-key.sh` - Display the Gevulot Node Public Key
* `display-prover-key.sh` - Display the Gevulot Prover Public Key
* `run.sh` - Start the Gevulot Node

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