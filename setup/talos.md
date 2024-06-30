# Setup Talos

These are set up notes taken from the docs found [here](https://www.talos.dev/v1.7/introduction/getting-started/)
Troubleshooting docs found [here](https://www.talos.dev/v1.7/introduction/troubleshooting/)

```
# patching this to add additional configuration for bootstrapping, storage, and single node cluster scheduling
talosctl gen config lab https://$endpoint:6443 \
  --config-patch=@patch.yaml
talosctl apply-config --insecure -n $endpoint --file controlplane.yaml

export TALOSCONFIG=$(pwd)/talosconfig
talosctl config endpoint $endpoint
talosctl config node $endpoint

# not needed if we patch with machine type 'init'
# talosctl --talosconfig=./talosconfig -n $endpoint bootstrap
talosctl --talosconfig=./talosconfig kubeconfig --nodes $endpoint --endpoints $endpoint
```

Patching config
```
talosctl --talosconfig=./talosconfig -n <IP> -e <IP> patch machineconfig -p @patch.yaml
```
