#!/bin/bash
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
. $SOURCE_DIR/10_export.sh

cd subs/augur.js
rm src/contracts/*.json
cp ../augur-core/output/contracts/addresses.json src/contracts/addresses.json
cp ../augur-core/output/contracts/upload-block-numbers.json src/contracts/upload-block-numbers.json
rm -fr node_modules
npm install
npm run build
yarn link
