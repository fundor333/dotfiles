#!/usr/bin/env python3

import pysftp
from loguru import logger
import click


@click.command()
@click.argument('private_key_path')
@click.argument('private_key_pass')
@click.option('--hostname', help="Hostname of the server", default="alilaguna.it")
@click.option('--username', help="User for the login", default="developer")
@click.option('--port', default=22, help="Porta per la connessione")
@click.option('--path_to_upload', default='/home/developer/Intranet/alilaguna.zip', help="path dove caricare i file")
@click.option('--path_get_upload', default='alilaguna.zip', help="Path del file da caricare")
def uploader(hostname, username, private_key_path, private_key_pass, port, path_to_upload, path_get_upload):
  with pysftp.Connection(host=hostname, username=username, private_key=private_key_path,
                         private_key_pass=private_key_pass, port=port) as sftp:
    logger.info("Connection succesfully stablished ... ")
    sftp.put(path_get_upload, path_to_upload)


if __name__ == '__main__':
  uploader()
