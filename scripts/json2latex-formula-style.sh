#!/bin/bash
jsonFile="$1"
jsonFilename="$(basename $jsonFile .json)"
styleFile="$jsonFilename-style.tex"
request=$(yad --title="Convert json to formula-style.tex?" --text="" \
	--form --width 500 --separator="~" --item-separator=","  \
	--field="Filename" \
	"$styleFile")
if [ ! $? -eq 1 ];
then
   cp formula-style.tex formula-style.tex.back
   cp template-formula-style.tex "$styleFile"
   #sed -i "s/{{font}}/$(jq -r '."Normal"."font"' $jsonFile)/g" "$styleFile"style
   #sed -i "s/{{font-size}}/$(jq -r '."Normal"."font-size"' $jsonFile)/g" "$styleFile"
   #sed -i "s/{{text-color}}/$(jq -r '."Normal"."text-color"' $jsonFile)/g" "$styleFile"
   #sed -i "s/{{text-background-color}}/$(jq -r '."Normal"."background-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{important-color}}/$(jq -r '."Important"."text-color"' $jsonFile | sed "s/#//g")/g" "$styleFile"
   sed -i "s/{{function-color}}/$(jq -r '."Function"."text-color"' $jsonFile | sed "s/#//g")/g" "$styleFile"
   sed -i "s/{{operator-color}}/$(jq -r '."Operator"."text-color"' $jsonFile | sed "s/#//g")/g" "$styleFile"
   sed -i "s/{{variable-color}}/$(jq -r '."Variable"."text-color"' $jsonFile | sed "s/#//g")/g" "$styleFile"
   sed -i "s/{{parameter-color}}/$(jq -r '."Parameter"."text-color"' $jsonFile | sed "s/#//g")/g" "$styleFile"
   sed -i "s/{{stochastic-color}}/$(jq -r '."Stochastic"."text-color"' $jsonFile | sed "s/#//g")/g" "$styleFile"
   sed -i "s/{{data-color}}/$(jq -r '."Data"."text-color"' $jsonFile | sed "s/#//g")/g" "$styleFile"
   sed -i "s/{{index-color}}/$(jq -r '."Index"."text-color"' $jsonFile | sed "s/#//g")/g" "$styleFile"
   cp "$styleFile" formula-style.tex
fi
