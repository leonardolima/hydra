#!/bin/bash

for FILENAME in figs/*
do
  echo "Converting $FILENAME file..."
  gs -dSAFER -dEPSCrop -r600 -sDEVICE=pngalpha -o "${FILENAME%%.*}".png "$FILENAME"
  echo "Done."
done
