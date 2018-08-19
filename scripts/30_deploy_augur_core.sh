#!/bin/bash
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
. $SOURCE_DIR/10_export.sh

cd subs/augur-core
# npm run docker:deploy:net environment
npm install
npm run build
npm run deploy:net environment
