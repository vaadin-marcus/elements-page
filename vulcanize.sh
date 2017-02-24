#!/bin/sh
WEBAPP_PATH="src/main/webapp"

vulcanize $WEBAPP_PATH/imports.html > $WEBAPP_PATH/all-the-things.html --inline-css --inline-scripts --strip-comments && crisper --source $WEBAPP_PATH/all-the-things.html --html $WEBAPP_PATH/all-the-things_html.html --js $WEBAPP_PATH/all-the-things_js.js && minify $WEBAPP_PATH/all-the-things_js.js
