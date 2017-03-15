#!/bin/sh
WEBAPP_PATH="src/main/webapp"

vulcanize $WEBAPP_PATH/imports.html > $WEBAPP_PATH/all-the-things.html --inline-css --inline-scripts --strip-comments && crisper --source $WEBAPP_PATH/all-the-things.html --html $WEBAPP_PATH/all-the-things_html.html --js $WEBAPP_PATH/all-the-things_js.js && minify $WEBAPP_PATH/all-the-things_js.js

sed -i -E '1s/all-the-things_js\.js/all-the-things_js.min.js/g' $WEBAPP_PATH/all-the-things_html.html
sed -i -E '10s/<link.+polymer\/polymer.html">//g' $WEBAPP_PATH/bower_components/hydrolysis/hydrolysis-analyzer.html
