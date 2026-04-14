# json2latex-formula-style.sh
Created 2026-04-14


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
## bash code


*make.sh*
```bash
noweb.py -Rjson2latex-formula-style.sh json2latex-formula-style.sh.md > json2latex-formula-style.sh && echo 'json2latex-formula-style.sh' && notify-send -a "Compilation of json2latex-formula-style.sh" "" "$(date +"%Y-%m-%d") fertig" 
```


```bash
chmod u+x json2latex-formula-style.sh && ln -sf $(pwd)/json2latex-formula-style.sh ~/.local/bin/json2latex-formula-style.sh && echo 'fertig'
```

*json2latex-formula-style.sh*
```bash
#!/bin/bash
jsonFile="$1"
jsonFilename="$(basename $jsonFile .json)"
styleFile="$jsonFilename-formula-style.tex"
request=$(yad --title="Convert json to latex-formula-style.tex?" --text="" \
	--form --width 500 --separator="~" --item-separator=","  \
	--field="Filename" \
	"$styleFile")
if [ ! $? -eq 1 ];
then
   cp latex-formula-style.tex latex-formula-style.tex.back
   cp template-latex-formula-style.tex "$styleFile"
   #sed -i "s/{{font}}/$(jq -r '."Normal"."font"' $jsonFile)/g" "$styleFile"style
   #sed -i "s/{{font-size}}/$(jq -r '."Normal"."font-size"' $jsonFile)/g" "$styleFile"
   #sed -i "s/{{text-color}}/$(jq -r '."Normal"."text-color"' $jsonFile)/g" "$styleFile"
   #sed -i "s/{{text-background-color}}/$(jq -r '."Normal"."background-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{important-color}}/$(jq -r '."Important"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{function-color}}/$(jq -r '."Function"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{operator-color}}/$(jq -r '."Operator"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{variable-color}}/$(jq -r '."Variable"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{parameter-color}}/$(jq -r '."Parameter"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{stochastic-color}}/$(jq -r '."Stochastic"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{data-color}}/$(jq -r '."Data"."text-color"' $jsonFile)/g" "$styleFile"
   sed -i "s/{{index-color}}/$(jq -r '."Index"."text-color"' $jsonFile)/g" "$styleFile"
   cp "$styleFile" latex-formula-style.tex
fi
```
