#!/bin/sh
WEBAPP_PATH="src/main/webapp"

vulcanize --inline-css --inline-scripts $WEBAPP_PATH/imports.html > $WEBAPP_PATH/all-the-things.html
