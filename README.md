# homebrew-crowsnest

Homebrew tap to install [Crow's Nest MQTT](https://github.com/koepalex/Crow-s-Nest-MQTT) on macOS.

## Installation

```bash
brew tap koepalex/crowsnest
brew install --cask crowsnestmqtt
```

## Updating

```bash
brew upgrade --cask crowsnestmqtt
```

## Uninstalling

```bash
brew uninstall --cask crowsnestmqtt
```

To also remove application data and preferences:

```bash
brew uninstall --cask --zap crowsnestmqtt
```

## Maintaining the Cask

The cask version is bumped automatically via GitHub Actions.

### Automatic (repository_dispatch)

The [Crow-s-Nest-MQTT publish workflow](https://github.com/koepalex/Crow-s-Nest-MQTT/blob/main/.github/workflows/publish.yml) can trigger a version bump by dispatching an event:

```yaml
- name: Bump Homebrew cask
  uses: peter-evans/repository-dispatch@v3
  with:
    token: ${{ secrets.HOMEBREW_TAP_TOKEN }}
    repository: koepalex/homebrew-crowsnest
    event-type: bump-cask
    client-payload: '{"version": "${{ needs.determine_version.outputs.semVer }}"}'
```

This requires a PAT stored as `HOMEBREW_TAP_TOKEN` in the `Crow-s-Nest-MQTT` repository secrets with `contents:write` permission on this repo.

### Manual

Trigger the "Bump Cask Version" workflow manually from the [Actions tab](https://github.com/koepalex/homebrew-crowsnest/actions/workflows/bump-cask.yml), optionally providing a version. If omitted, the latest release is auto-detected.
