#!/bin/bash
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
. $SOURCE_DIR/10_export.sh

wget -c https://github.com/ethereum/solidity/releases/download/v0.4.20/solc-static-linux -O bin/solc
chmod +x bin/solc
export PATH=`pwd`/bin:$PATH
cd subs/augur.js
npm install
echo "Deploying to " $ETHEREUM_HTTP
npm run deploy:environment
