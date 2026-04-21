# json2latex-formula-style.sh
Created 2026-04-14


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
 
wird nicht mehr benötigt
 
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
```
