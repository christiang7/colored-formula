#!/bin/bash
jsonFile="$1"
jsonFilename="$(basename $jsonFile .json)"
styleFile="$jsonFilename-zim-style.conf"
request=$(yad --title="Convert json to style.conf?" --text="" \
	--form --width 500 --separator="~" --item-separator=","  \
	--field="Filename" \
	"$styleFile")
if [ ! $? -eq 1 ];
then
   cp style.conf style.conf.back
   cp template-zim-style.conf "$styleFile"
   sed -i "s/{{font}}/$(jq -r '."Normal"."font"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{font-size}}/$(jq -r '."Normal"."font-size"' $jsonFile)/g" "$styleFile"
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
   cp "$styleFile" style.conf
fi
