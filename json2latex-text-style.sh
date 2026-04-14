#!/bin/bash
jsonFile="$1"
jsonFilename="$(basename $jsonFile .json)"
styleFile="$jsonFilename-text-style.tex"
request=$(yad --title="Convert json to latex-text-style.tex?" --text="" \
	--form --width 500 --separator="~" --item-separator=","  \
	--field="Filename" \
	"$styleFile")
if [ ! $? -eq 1 ];
then
   cp latex-text-style.tex latex-text-style.tex.back
   cp template-latex-text-style.tex "$styleFile"
   #sed -i "s/{{font}}/$(jq -r '."Normal"."font"' $jsonFile)/g" "$styleFile"style
   #sed -i "s/{{font-size}}/$(jq -r '."Normal"."font-size"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{text-color}}/$(jq -r '."Normal"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{text-background-color}}/$(jq -r '."Normal"."background-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{section-color}}/$(jq -r '."Section"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{bold-color}}/$(jq -r '."Bold"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{emphasis-color}}/$(jq -r '."Emphasis"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{mark-color}}/$(jq -r '."Mark"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{mark-background-color}}/$(jq -r '."Mark"."background-text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{strike-color}}/$(jq -r '."Strike"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{strike-through}}/$(jq -r '."Strike"."strike-through"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{link-color}}/$(jq -r '."Link"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{page-link-color}}/$(jq -r '."Page-link"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{indent-color}}/$(jq -r '."Indent"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{code-color}}/$(jq -r '."Code"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{verbatim-color}}/$(jq -r '."Verbatim"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{tag-color}}/$(jq -r '."Tag"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{index-color}}/$(jq -r '."Index"."text-color"' $jsonFile)/g" "$styleFile"
   cp "$styleFile" latex-text-style.tex
fi
