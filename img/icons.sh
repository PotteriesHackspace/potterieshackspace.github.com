#!/bin/sh
# brew install imagemagick
convert -background transparent icon.svg ../favicon.png
convert -resize 32x32 -background transparent icon.svg ../favicon.ico
convert -resize 180x180 -background transparent icon.svg ../apple-touch-icon.png
convert -resize 558x558 -background transparent icon.svg ../tile.png
convert -resize 558x270 -gravity center -extent 558x270 -background transparent icon.svg ../tile-wide.png
convert -resize 144x144 -background transparent icon.svg ../windows-tile.png