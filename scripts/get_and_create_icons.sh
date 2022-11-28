#!/usr/bin/env bash

# run this from /src-tauri

VERSION_TAG=$(cat ../package.json | jq '.version' | xargs -i echo v{})

# fetch icon
curl -s -L --create-dirs --output-dir ./.icons-tmp -o cyberchef.svg https://github.com/gchq/CyberChef/raw/"${VERSION_TAG}"/src/web/static/images/logo/cyberchef.svg

# convert to compatible format
inkscape -w 1240 -h 1240 ./.icons-tmp/cyberchef.svg -o app-icon.png

# create icons with tauri-cli
cargo tauri icon ./app-icon.png

# cleanup
rm -r ./.icons-tmp
