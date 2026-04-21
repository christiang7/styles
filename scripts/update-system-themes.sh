#!/bin/bash
source style-lib.sh
textThemeDir="$(config_get themeDir)"
textInstallDir="$(config_get installDir)"
source formula-lib.sh
formulaThemeDir="$(config_get themeDir)"
formulaInstallDir="$(config_get installDir)"
#themeFile="$1"
request=$(yad --title="Update system themes?" --text="Update system themes?" \
	--width 500 )
if [ ! $? -eq 1 ];
then
   #cp "$textThemeDir"/text-theme.tex "$installDir"/test/test-color_tex/text-style.tex
   #cp "$formulaThemeDir"/formula-theme.tex "$installDir"/test/test-color_tex/formula-style.tex
   #cp "$themeDir"/symbol-style.tex "$installDir"/test/test-color_tex/symbol-style.tex
   cp "$textThemeDir"/text-style.tex ~/.config/Vorlagen/text-style.tex
   cp "$textThemeDir"/text-theme.tex ~/.config/Vorlagen/text-theme.tex
   cp "$textThemeDir"/style.conf ~/.config/zim/style.conf
   cp "$formulaThemeDir"/formula-style.tex ~/.config/Vorlagen/formula-style.tex
   cp "$formulaThemeDir"/formula-theme.tex ~/.config/Vorlagen/formula-theme.tex
   cp "$formulaThemeDir"/symbol-style.tex ~/.config/Vorlagen/symbol-style.tex
   #cp "$themeDir"/"$themeFile" ~/.config/Vorlagen/"$themeFile"
   notify-send -a "Successful updated themes" "" "$(date +"%Y-%m-%d") fertig"
fi
