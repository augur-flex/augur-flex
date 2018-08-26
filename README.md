# Flexible Augur Integration Testing

Disclaimer: This is just some automation around provisioning and using
the Augur framework (https://github.com/AugurProject) on arbitrary
"ethereum-compatible" blockchains. I am not an Augur developer and the
documentation and support at https://github.com/AugurProject are
generally more useful than this repo.


## Instructions

### Environment Variables

Modify scripts/10_export.sh to customize the ethereum end point to
deploy to.

### Start Ethereum testnet

```bash
./scripts/20_start_parity_poa.sh
```

Expected output:

```bash
...
monitor_1     | ┌────────────┬────┬──────┬─────┬────────┬─────────┬────────┬─────┬───────────┬──────────┐
monitor_1     | │ App name   │ id │ mode │ pid │ status │ restart │ uptime │ cpu │ mem       │ watching │
monitor_1     | ├────────────┼────┼──────┼─────┼────────┼─────────┼────────┼─────┼───────────┼──────────┤
monitor_1     | │ authority0 │ 0  │ fork │ 17  │ online │ 0       │ 1s     │ 78% │ 31.7 MB   │ enabled  │
monitor_1     | │ authority1 │ 1  │ fork │ 25  │ online │ 0       │ 0s     │ 73% │ 31.8 MB   │ enabled  │
monitor_1     | │ authority2 │ 2  │ fork │ 31  │ online │ 0       │ 0s     │ 65% │ 31.6 MB   │ enabled  │
monitor_1     | │ member0    │ 3  │ fork │ 39  │ online │ 0       │ 0s     │ 74% │ 31.8 MB   │ enabled  │
monitor_1     | │ member1    │ 4  │ fork │ 53  │ online │ 0       │ 0s     │ 83% │ 31.6 MB   │ enabled  │
monitor_1     | │ member2    │ 5  │ fork │ 78  │ online │ 0       │ 0s     │ 64% │ 27.6 MB   │ enabled  │
monitor_1     | └────────────┴────┴──────┴─────┴────────┴─────────┴────────┴─────┴───────────┴──────────┘
...
member0_1     | 2018-08-26 21:19:58 UTC    5/25 peers    743 KiB chain    8 MiB db  0 bytes queue   10 KiB sync  RPC:  0 conn,  3 req/s, 114 µs
...
```

You can view a dashboard at http://127.0.0.1:3001.

### Deploy contracts and some initial transations

```bash
./scripts/30_deploy_augur.sh
```

Expected output:

```bash
...
transaction 0xea69183a54cc0ef5e133845d5cd489472723ecea79c61c35cc39ad5900238435 status 0x1 used 727762 gas
transaction 0x082283d1fac2a68a7626320f9e61cf11557cce650421bc492fce0be291774a9f status 0x1 used 666613 gas
transaction 0xa0abaaeb21f769c711da0f652aa1e0fa2fc28726dfc5052c53b0d22791e4420e status 0x1 used 655129 gas
transaction 0xb2b7e6bd92456917593cf6f4f137a022250e2470955c79a16ab00fc04a08db4b status 0x1 used 723966 gas
transaction 0x4ce4d19f89d342f1e6a7be9a600b0577f28920c2f9c0452c888bc454be59159c status 0x1 used 666616 gas
transaction 0xde53ba6551c464f8dcf59b548929403ea47ba8274b91ce42ba2bbf86fb65942d status 0x1 used 655129 gas
transaction 0x26a7978c6fa7db91ecaf8b90e313d5b9b8f3f93c1af37529fe36a41d3a3daf35 status 0x1 used 727762 gas
transaction 0xcef5f6d36abbbc32e9dc379150daf980e6f4451dcadb72b4538c3a4264b1144e status 0x1 used 666616 gas
```

### Start augur-node

```bash
./scripts/50_launch_augur_node.sh
```

Expected output:

```bash
...
Starting websocket secure server on port 9002
Starting websocket server on port 9001
Starting blockstream at block  185
new block: 185, 1535318678 (Sun Aug 26 2018 17:24:38 GMT-0400 (EDT))
Processing 11 logs
```

### Start augur-ui

```bash
./scripts/60_launch_augur_ui.sh
```

Expected output:

```bash
 [811] ./src/main.jsx 1.75 kB {11} [built]
     + 2948 hidden modules
 Child html-webpack-plugin for "index.html":
          Asset     Size  Chunks  Chunk Names
     index.html  1.49 MB       0
        [0] ./node_modules/html-webpack-plugin/lib/loader.js!./src/index.ejs 6.5 kB {0} [built]
        [1] ./node_modules/lodash/lodash.js 540 kB {0} [built]
        [2] (webpack)/buildin/global.js 509 bytes {0} [built]
        [3] (webpack)/buildin/module.js 517 bytes {0} [built]
        : Compiled successfully.
```
