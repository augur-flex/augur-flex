#!/bin/bash
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
. $SOURCE_DIR/10_export.sh

rm bin/solc
wget -c https://github.com/ethereum/solidity/releases/download/v0.4.24/solc-static-linux -O bin/solc
chmod +x bin/solc
export PATH=`pwd`/bin:$PATH
if [ -d "subs/augur-core" ]; then
    echo "Building augur-core from subs/augur-core since it is present."
    cd subs/augur-core
    npm install
    npm run build
    cd ../../
fi
cd subs/augur.js
npm install
if [ -d "../augur-core" ]; then
    echo "Using augur-core from subs/augur-core since it is present."
    rm -fr node_modules/augur-core
    ln -s `pwd`/../augur-core node_modules/augur-core
fi
echo "Deploying to " $ETHEREUM_HTTP
npm run deploy:environment
