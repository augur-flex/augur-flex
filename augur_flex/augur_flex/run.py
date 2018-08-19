#!/usr/bin/env python3

import subprocess
import sys

from augur_flex.config import default_config

def provision_ganache(private_key):
    subprocess.run('docker run -it trufflesuite/ganache-cli --account={},10000000000000000000000'.format(private_key),
                    shell=True)

def deploy_augur_core(ethereum_http, private_key):
    provision_ganache(private_key)
    env = {
        'ETHEREUM_HTTP':ethereum_http
    }
    subprocess.run('npm run docker:deploy:net environment', cwd='augur-core', env=env)

def main(argv):
    deploy_augur_core(default_config['ETHEREUM_HTTP'],
                      default_config['ETHEREUM_PRIVATE_KEY'])

if __name__ == "__main__":
    main(sys.argv)
