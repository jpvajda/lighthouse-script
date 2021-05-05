#!/bin/bash

if ! [ -x "$(command -v lighthouse)" ]; then
  echo "Be sure to install lighthouse 1st!. RUN npm i -g lighthouse" >&2
  exit 1
else

echo "Ok! let's run some lighthouse reports!"

cd /Users/$USER/Documents/lighthouse-reports

lighthouse https://opensource.newrelic.com --preset=desktop --view
lighthouse https://developer.newrelic.com  --preset=desktop --view
lighthouse https://docs.newrelic.com --preset=desktop --view

echo "reports are located in /Documents/lighthouse-reports!"
fi


