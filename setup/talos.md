# Setup Talos

These are set up notes taken from the docs found [here](https://www.talos.dev/v1.7/introduction/getting-started/)
Troubleshooting docs found [here](https://www.talos.dev/v1.7/introduction/troubleshooting/)

```
talosctl gen config $cluster_name $endpoint:6443
talosctl apply-config --insecure -n $endpoint --file controlplane.yaml
talosctl --talosconfig=./talosconfig -n $endpoint bootstrap
talosctl --talosconfig=./talosconfig kubeconfig --nodes $endpoint --endpoints $endpoint
```