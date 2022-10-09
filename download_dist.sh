#!/usr/bin/env bash

# Cleanup previous stuff
rm -rf ./dist/
rm -rf ./archive/

# Download latest release
curl -s https://api.github.com/repos/gchq/CyberChef/releases/latest | \
  awk -F\" '/browser_download_url.*.zip/{print $(NF-1)}' | \
  xargs curl -s -O -J -L --create-dirs --output-dir ./archive

# Unzip to dist dir
unzip ./archive/CyberChef_*.zip -d ./dist/

# Rename index.html
mv ./dist/CyberChef_*.html ./dist/index.html

# Cleanup archive dir
rm -rf ./archive/
