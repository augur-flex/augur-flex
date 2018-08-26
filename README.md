# Flexible Augur Integration Testing

Disclaimer: This is just some automation around provisioning and using
the Augur framework (https://github.com/AugurProject) on arbitrary
"ethereum-compatible" blockchains. I am not an Augur developer and the
documentation and support at https://github.com/AugurProject are
generally more useful and this repo.


## Instructions

### Environment Variables

Modify scripts/10_export.sh to customize the ethereum end point to
deploy to.

### Start Ethereum testnet

```bash
./scripts/20_start_parity_poa.sh
```

### Deploy contracts and some initial transations

```bash
./scripts/30_deploy_augur.sh
```

### Start augur-node

```bash
./scripts/50_launch_augur_node.sh
```
