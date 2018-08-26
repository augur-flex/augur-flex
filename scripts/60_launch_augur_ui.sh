#!/bin/bash
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
. $SOURCE_DIR/10_export.sh

cd subs/augur-ui
rm -fr node_modules
npm install
rm -fr node_modules/augur.js
ln -s `pwd`/../augur.js node_modules/augur.js
yarn dev
