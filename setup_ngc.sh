#!/bin/sh

# Install NGC CLI
curl -O https://ngc.nvidia.com/downloads/ngccli_linux.zip
unzip ngccli_linux.zip && chmod u+x ngc

# Move the NGC CLI to a directory in PATH
sudo mv ngc /usr/local/bin/

# Cleanup
rm ngccli_linux.zip && rm ngccli_linux.zip.md5

# Initial configuration placeholder
echo "Run ngc config set to configure your CLI with appropriate credentials."
