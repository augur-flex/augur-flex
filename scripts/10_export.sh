#!/bin/bash

SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Private key for 0xe6ef0915f245bd9180a8388fe44fb3e93c331561
export ETHEREUM_PRIVATE_KEY=0xd5a9eca3139cda1d5bcde9920fb797c3d7803ae80ee8f27881876fad29da9ca9
export ETHEREUM_PUBLIC_KEY=0xe6ef0915f245bd9180a8388fe44fb3e93c331561
export ETHEREUM_HTTP=http://127.0.0.1:8545

# You don't normally need to modify this.
export USE_NORMAL_TIME=true
export GAS_PRICE_IN_NANOETH=2

# Optional local overrides.
FILE=$SOURCE_DIR/10_export_DO_NOT_TRACK.sh
if [ -f $FILE ]; then
    source $FILE
else
    echo "File $FILE does not exist. Skipping local overrides."
fi
