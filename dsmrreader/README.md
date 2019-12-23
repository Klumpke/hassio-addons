# JeroenKlompen's Hass.io Add-ons: DSMR Reader

## About

DSMR Reader add-on based on xirixiz/dsmr-reader-docker


## Installation

Note: This addon requires a postgresql database. Make sure you have the MariaDB addon running with a database set-up with these options:

database: dsmrreader
username: dsmrreader
password: dsmrreader

1. [Add my Hass.io add-ons repository][repository] to your Hass.io instance.
1. Install the add-on.
1. Click the `Save` button to store your configuration.
1. Start the  add-on.
1. Check the logs of the add-on to see if everything went well.
1. Carefully configure the add-on to your preferences, see the official documentation for for that.


## Configuration

Access the webui at <your-ip>:8888

- DSMR-reader: Datalogger/archive for P1 DSMR Telegrams



[repository]: https://github.com/Klumpke/hassio-addons