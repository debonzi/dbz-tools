#!/usr/bin/env bash
set -euo pipefail

repo_root="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
bin_dir="$HOME/.local/bin"

install_link() {
    local name="$1"
    local source="$2"
    local target="$bin_dir/$name"

    if [ ! -f "$source" ]; then
        printf 'error: source not found: %s\n' "$source" >&2
        return 1
    fi

    chmod +x "$source"
    mkdir -p "$bin_dir"

    if [ -L "$target" ]; then
        local current_target
        current_target="$(readlink "$target")"
        if [ "$current_target" = "$source" ]; then
            printf '%s already installed -> %s\n' "$target" "$source"
            return 0
        fi

        printf 'error: %s already exists and points to %s\n' "$target" "$current_target" >&2
        printf 'remove it manually before installing %s\n' "$name" >&2
        return 1
    fi

    if [ -e "$target" ]; then
        printf 'error: %s already exists and is not a symlink\n' "$target" >&2
        printf 'remove it manually before installing %s\n' "$name" >&2
        return 1
    fi

    ln -s "$source" "$target"
    printf '%s -> %s\n' "$target" "$source"
}

install_link k8ctx "$repo_root/k8s/k8ctx/k8ctx"
install_link k8ns "$repo_root/k8s/k8ns/k8ns"
