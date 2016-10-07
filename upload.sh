#!/bin/bash
#
# Upload the web directory to the gh-pages branch.
# This has been added to allow restricted write access
# the web pages that are served at https://ibpsa.github.io/project1/.
# Run this script for the web subdirectory
if [ ! -d "../web" ]; then 
    echo "Error: This script needs to be run from the directory 'web'."
    exit 1
fi

(cd .. && git subtree push --prefix web origin gh-pages)
