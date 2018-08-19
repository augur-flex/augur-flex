# -*- coding: utf-8 -*-

"""Console script for augur_flex."""
import sys
import click

import augur_flex.run

@click.command()
def main(args=None):
    """Console script for augur_flex."""
    augur_flex.run.main(args)
    click.echo("See click documentation at http://click.pocoo.org/")
    return 0


if __name__ == "__main__":
    sys.exit(main())  # pragma: no cover
