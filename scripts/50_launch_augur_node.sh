#!/bin/bash
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
. $SOURCE_DIR/10_export.sh

cd subs/augur-node
rm -fr node_modules
npm install
yarn link augur.js
npm run clean-start
