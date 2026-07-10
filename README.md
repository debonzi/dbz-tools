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

## Tmux

Create or attach to the default `main` session:

```bash
tm
```

Create or attach to a named session:

```bash
tm music
```

### Zsh completion

The `tm` completion lists running tmux sessions. Add the completion directory to
your zsh `fpath` before `compinit`:

```zsh
fpath=("$HOME/.local/share/zsh/site-functions" $fpath)
autoload -Uz compinit
compinit
```

## Install

```bash
./install.sh
```

The installer creates command symlinks in `~/.local/bin` and zsh completion
symlinks in `~/.local/share/zsh/site-functions`.
