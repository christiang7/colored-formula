# json2latex-formula-theme.sh
Created 2026-04-21


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
## bash code


*make.sh*
```bash
noweb.py -Rjson2latex-formula-theme.sh json2latex-formula-theme.sh.md > json2latex-formula-theme.sh && echo 'json2latex-formula-theme.sh' && notify-send -a "Compilation of json2latex-formula-theme.sh" "" "$(date +"%Y-%m-%d") fertig" 
```


```bash
chmod u+x json2latex-formula-theme.sh && ln -sf $(pwd)/json2latex-formula-theme.sh ~/.local/bin/json2latex-formula-theme.sh && echo 'fertig'
```

*json2latex-formula-theme.sh*
```bash
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
```

```bash
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
```

   