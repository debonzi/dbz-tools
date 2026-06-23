# Tools

Local repository for small command-line tools.

## Kubernetes

The Kubernetes wrappers are compatible with a `KUBECONFIG` made of multiple files because they call `kubectl` directly instead of `kubens` or `kubectx`.

### k8ctx

List contexts:

```bash
k8ctx
```

Switch context:

```bash
k8ctx staging-cluster
```

### k8ns

List namespaces in the current context:

```bash
k8ns
```

Set the namespace for the current context:

```bash
k8ns music
```

## Install

```bash
./install.sh
```

The installer creates symlinks in `~/.local/bin`.
