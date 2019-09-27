#!/bin/bash
set -e

(cd pubs && python3 bib2md.py)
jekyll serve --config _config.yml,_config_dev.yml