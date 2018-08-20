#!/bin/bash
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
. $SOURCE_DIR/10_export.sh

wget https://github.com/ethereum/solidity/releases/download/v0.4.20/solc-static-linux -O bin/solc
chmod +x bin/solc
export PATH=`pwd`/bin:$PATH
cd subs/augur-core
# npm run docker:deploy:net environment
npm install
npm run build
npm run deploy:net environment
