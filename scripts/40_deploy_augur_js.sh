cd subs/augur.js
rm src/contracts/*.json
cp ../augur-core/output/contracts/addresses.json src/contracts/addresses.json
cp ../augur-core/output/contracts/upload-block-numbers.json src/contracts/upload-block-numbers.json
npm install
npm run build
yarn link
