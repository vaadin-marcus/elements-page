#!/bin/sh
WEBAPP_PATH="src/main/webapp"

vulcanize $WEBAPP_PATH/imports.html > $WEBAPP_PATH/all-the-things.html --inline-css --inline-scripts --strip-comments
