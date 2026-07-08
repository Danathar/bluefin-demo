# Custom Bluefin (GNOME) Image

Demo image created with Atomic Image Builder

This repository builds a custom bootc image on GitHub Actions.

| Setting | Value |
|---------|-------|
| Repository | `Danathar/bluefin-demo` |
| Base Image | `Bluefin (GNOME)` |
| Base Image URI | `ghcr.io/ublue-os/bluefin:stable` |
| Published Image | `ghcr.io/danathar/bluefin-demo:latest` |
| Build Method | `Containerfile` |

## Managed By Atomic Image Builder

This repo is managed by `atomic-image-builder`. `.atomic-image-builder.json` is the saved settings file and source of truth for future updates.

If you hand-edit this repo after `atomic-image-builder` creates or manages it, stop using `atomic-image-builder` for this repo.

Later tool-driven updates rewrite managed files and can overwrite manual changes, especially `README.md` and `build_files/build.sh`.

## Requested Packages

These are the package names requested by this repo's generated build script.
Selected packages are what this repo will attempt to add, even if some are already present in the chosen base image.

- `tmux`
- `htop`
- `fastfetch`

## COPR Repositories

- None.

## Enabled Services

- `sshd.service`

## Removed Base Packages

- None.

## Using The Image

After the first successful GitHub Actions build finishes, switch to it with:

```bash
sudo bootc switch ghcr.io/danathar/bluefin-demo:latest
systemctl reboot
```
