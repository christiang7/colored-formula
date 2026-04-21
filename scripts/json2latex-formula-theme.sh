#!/bin/bash
source formula-lib.sh
jsonFile="$(basename $1)"
jsonFolder=$(dirname "$(realpath "$jsonFile")")
installFolder="$(config_get installDir)"
cd $installFolder
jsonFilename="$(basename $jsonFile .json)"
themeFile="$jsonFilename-theme.tex"
request=$(yad --title="Convert json to formula-theme.tex?" --text="" \
	--form --width 500 --separator="~" --item-separator=","  \
	--field="Filename" \
	"$themeFile")
if [ ! $? -eq 1 ];
then
   #cp themes/formula-theme.tex themes/formula-theme.tex.back
   cp templates/template-formula-theme.tex "$jsonFolder"/"$themeFile"
   declare -A tags=(["theme-name"]="\"Meta\".\"name\"" ["theme-version"]="\"Meta\".\"version\"" ["text-color"]="\"Normal\".\"text-color\"" ["text-background-color"]="\"Normal\".\"background-color\"" ["important-color"]="\"Important\".\"text-color\"" ["function-color"]="\"Function\".\"text-color\"" ["operator-color"]="\"Operator\".\"text-color\"" ["variable-color"]="\"Variable\".\"text-color\"" ["parameter-color"]="\"Parameter\".\"text-color\"" ["stochastic-color"]="\"Stochastic\".\"text-color\"" ["data-color"]="\"Data\".\"text-color\"" ["index-color"]="\"Index\".\"text-color\"")
   #echo "${tags[theme-name]}"
   for key in "${!tags[@]}"; do
      sed -i "s/{{$key}}/$(yq -r ".${tags[$key]}" "$jsonFolder"/"$jsonFile" | sed "s/#//g")/g" "$jsonFolder"/"$themeFile"
   done
   cp "$jsonFolder"/"$themeFile" "$jsonFolder"/formula-theme.tex
fi
