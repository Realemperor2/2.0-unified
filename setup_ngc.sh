#!/bin/sh

# Download NGC CLI
curl -O https://ngc.nvidia.com/downloads/ngccli_linux.zip
unzip ngccli_linux.zip && chmod u+x ngc

# Move the NGC CLI to a directory in PATH
sudo mv ngc /usr/local/bin/

# Cleanup
rm ngccli_linux.zip && rm ngccli_linux.zip.md5

# Configuration using environment variables
ngc config set --apiKey "${NGC_API_KEY}"
echo "Ensure NGC_API_KEY is set in your environment variables."
