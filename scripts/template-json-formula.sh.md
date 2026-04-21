# template-json-formula.sh
Created 2026-04-15


## Description

## Journal
 - [X] Backlog
- [ ] 
 - [X] Doing
 
## bash code


*make.sh*
```bash
noweb.py -Rtemplate-json-formula.sh template-json-formula.sh.md > template-json-formula.sh && echo 'template-json-formula.sh' && notify-send -a "Compilation of template-json-formula.sh" "" "$(date +"%Y-%m-%d") fertig" 
```


```bash
chmod u+x template-json-formula.sh && ln -sf $(pwd)/template-json-formula.sh ~/.local/bin/template-json-formula.sh && echo 'fertig'
```

### template-json-formula.sh

*template-json-formula.sh*
```bash
#*preamble}}

yadSwitch=$2

if [[ ! -e "$1" ]]
then
> folder=$(pwd)
else
> filetxt=$(readlink -f -n "$1")
> folder=${filetxt%.*}
> mkdir -p "$folder"
fi
cd "$folder"
echo "$folder"

#*Main}}


```


### Preamble

setting presets before starting the program
the first line is needed for shell scripts

*preamble*
```bash
#!/bin/bash
source config.sh; # load the config library functions
templateDir="$(config_get templateDir)"
author="$(config_get author)"
source tt-lib.sh;
```

### Request

*request*
```bash
abfrage=$(yad --title="New json theme File" --text="Necessary Informations:" \
> --form --width 500 --separator="~" --item-separator=","  \
> --field="Filename" \
> --field="Author":CBE \
> --field="Tags":CBE \
> --field="Description":TXT \
> "" "$author,Internet" ",physic,math" "")
```

### Main


*Main*
```bash
if [[ $yadSwitch == "" ]]
then
> #*request}}
fi
if [ ! $? -eq 1 ];
then
> if [[ $yadSwitch == "" ]]
> then
> > filename=$(echo $abfrage | cut -s -d "~" -f 1)
> > source=$(echo $abfrage | cut -s -d "~" -f 2)
> > tags=$(echo $abfrage | cut -s -d "~" -f 3)
> > additiontext=$(echo $abfrage | cut -s -d "~" -f 4)
> else
> > filename="$1"
> > source="$3"
> > tags="$4"
> > additiontext="$5"
> fi
> title="$filename"
> filename=$(cleanName "$filename")
> File="${filename}.json"
	
> markdown-description-program "${File}" >> "$folder"/"${File}".md

> #*formula template}}

> if [[ $gitinit == TRUE ]];
> then
> > #*git init}}
> fi
	
> notify-send -a "Created template $File" "" "$(date +"%Y-%m-%d") fertig"
fi
```

### create formula template

Creation of formula template

*formula template*
```bash
cp "$templateDir"/template-formula-theme.json "$folder"/"${File}"

template-code "$folder" "${File}" "$additiontext" >> "$folder"/"${File}".md

```

### git versioning

*git init*
```bash
cd "$foldertex"
git init
echo -e "*.log\n*.out\nMAKE" > .gitignore
git add * .gitignore
git commit -a -m "init git"
```
