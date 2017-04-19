#!/bin/sh
WEBAPP_PATH="src/main/webapp"

vulcanize $WEBAPP_PATH/imports.html > $WEBAPP_PATH/all-the-things.html --inline-css --inline-scripts --strip-comments && crisper --source $WEBAPP_PATH/all-the-things.html --html $WEBAPP_PATH/all-the-things_html.html --js $WEBAPP_PATH/all-the-things_js.js && minify $WEBAPP_PATH/all-the-things_js.js

# Note that GNU sed (Linux) and BSD sed (macOS) work very differently
# see: http://stackoverflow.com/questions/5694228/sed-in-place-flag-that-works-both-on-mac-bsd-and-linux
# and: http://stackoverflow.com/documentation/sed/9436/bsd-macos-sed-vs-gnu-sed-vs-the-posix-sed-specification
# This syntax below should work the same on both systems.
sed -i.bak -E "1s/all-the-things_js\.js/all-the-things_js.min.js?$$/g" $WEBAPP_PATH/all-the-things_html.html
rm -f $WEBAPP_PATH/all-the-things_html.html.bak
sed -i.bak -E '10s/<link.+polymer\/polymer.html">//g' $WEBAPP_PATH/bower_components/hydrolysis/hydrolysis-analyzer.html
rm -f $WEBAPP_PATH/bower_components/hydrolysis/hydrolysis-analyzer.html.bak

$(cd src/main/webapp/examples/pro/board && bower install --quiet)
