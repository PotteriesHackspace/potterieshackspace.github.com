::logos.bat - builds logos from svg file to png
@ECHO OFF
convert -resize 558x270 -gravity center -extent 558x270 ../img/logo.svg ../img/logo.png
convert -resize 558x270 -gravity center -extent 558x270 ../img/logo-white.svg ../img/logo-white.png
PAUSE
::EOF