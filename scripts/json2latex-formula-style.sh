#!/bin/bash
source formula-lib.sh
jsonFile="$(basename $1)"
jsonFolder=$(dirname "$(realpath "$jsonFile")")
installFolder="$(config_get installDir)"
cd $installFolder
jsonFilename="$(basename $jsonFile .json)"
styleFile="$jsonFilename-style.tex"
request=$(yad --title="Convert json to formula-style.tex?" --text="" \
	--form --width 500 --separator="~" --item-separator=","  \
	--field="Filename" \
	"$styleFile")
if [ ! $? -eq 1 ];
then
   cp themes/formula-style.tex themes/formula-style.tex.back
   cp templates/template-formula-style.tex themes/"$styleFile"
   cp themes/"$styleFile" themes/formula-style.tex
fi
