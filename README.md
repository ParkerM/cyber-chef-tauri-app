# CyberChef tauri builder

Packages upstream [CyberChef](https://github.com/gchq/CyberChef) bundles as desktop apps
using [tauri](https://tauri.app/).

Workflows and version handling inspired by https://github.com/MuhammedKalkan/OpenLens.

### Building Manually
#### Setup
1. Ensure rust and tauri-cli are installed. See tauri's [Prerequisites](https://tauri.app/v1/guides/getting-started/prerequisites)
   guide for details.
2. Extract a bundle to `./dist` and rename the index file to `index.html`.
   A clumsy script is provided at [./download_dist.sh](./download_dist.sh) that
   should take care of this (but will always pull the latest version).
   This will also be called before starting the app in dev mode.

#### Spin up a dev server
```shell
cargo tauri dev
```

#### Build installer/package binaries
```shell
cargo tauri build

# Find artifacts here
ls ./src-tauri/target/release/bundle
```
