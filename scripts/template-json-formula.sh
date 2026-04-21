#!/bin/bash
source config.sh; # load the config library functions
templateDir="$(config_get templateDir)"
author="$(config_get author)"
source tt-lib.sh;

yadSwitch=$2

if [[ ! -e "$1" ]]
then
	folder=$(pwd)
else
	filetxt=$(readlink -f -n "$1")
	folder=${filetxt%.*}
	mkdir -p "$folder"
fi
cd "$folder"
echo "$folder"

if [[ $yadSwitch == "" ]]
then
	abfrage=$(yad --title="New json theme File" --text="Necessary Informations:" \
		--form --width 500 --separator="~" --item-separator=","  \
		--field="Filename" \
		--field="Author":CBE \
		--field="Tags":CBE \
		--field="Description":TXT \
		"" "$author,Internet" ",physic,math" "")
fi
if [ ! $? -eq 1 ];
then
	if [[ $yadSwitch == "" ]]
    then
		filename=$(echo $abfrage | cut -s -d "~" -f 1)
		source=$(echo $abfrage | cut -s -d "~" -f 2)
		tags=$(echo $abfrage | cut -s -d "~" -f 3)
		additiontext=$(echo $abfrage | cut -s -d "~" -f 4)
	else
		filename="$1"
		source="$3"
		tags="$4"
		additiontext="$5"
	fi
	title="$filename"
	filename=$(cleanName "$filename")
	File="${filename}.json"

	markdown-description-program "${File}" >> "$folder"/"${File}".md

	cp "$templateDir"/template-formula-theme.json "$folder"/"${File}"

	template-code "$folder" "${File}" "$additiontext" >> "$folder"/"${File}".md


	if [[ $gitinit == TRUE ]];
	then
		cd "$foldertex"
		git init
		echo -e "*.log\n*.out\nMAKE" > .gitignore
		git add * .gitignore
		git commit -a -m "init git"
	fi

	notify-send -a "Created template $File" "" "$(date +"%Y-%m-%d") fertig"
fi


