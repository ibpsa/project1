#!/bin/bash
set -e

(cd pubs && python bib2html.py)
jekyll serve --config _config.yml,_config_dev.yml
