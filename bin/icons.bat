::icons.bat - builds icons from svg file to png or ico
@ECHO OFF
convert -resize 48x48 -background none ../images/icon.svg ../images/logo.png
convert -resize 16x16 -background none ../images/icon.svg ../favicon.ico
convert -resize 16x16 -background none ../images/icon.svg ../favicon.png
convert -resize 180x180 -background none ../images/icon.svg ../apple-touch-icon.png
convert -resize 144x144 -background none ../images/icon.svg ../windows-tile.png
convert -resize 558x558 -background none ../images/icon.svg ../tile.png
convert -resize 558x270 -gravity center -extent 558x270 -background none ../images/icon.svg ../tile-wide.png
PAUSE
::EOF