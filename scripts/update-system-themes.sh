#!/bin/bash
source config-style.sh
themeDir="$(config_get themeDir)"
installDir="$(config_get installDir)"
#themeFile="$1"
request=$(yad --title="Update system themes?" --text="Update system themes?" \
	--width 500 )
if [ ! $? -eq 1 ];
then
   cp "$themeDir"/text-style.tex "$installDir"/test/test-color_tex/text-style.tex
   cp "$themeDir"/formula-style.tex "$installDir"/test/test-color_tex/formula-style.tex
   cp "$themeDir"/symbol-style.tex "$installDir"/test/test-color_tex/symbol-style.tex
   cp "$themeDir"/text-style.tex ~/.config/Vorlagen/text-style.tex
   cp "$themeDir"/formula-style.tex ~/.config/Vorlagen/formula-style.tex
   cp "$themeDir"/symbol-style.tex ~/.config/Vorlagen/symbol-style.tex
   #cp "$themeDir"/"$themeFile" ~/.config/Vorlagen/"$themeFile"
   cp "$themeDir"/style.conf ~/.config/zim/style.conf
   notify-send -a "Successful updated themes" "" "$(date +"%Y-%m-%d") fertig"
fi
