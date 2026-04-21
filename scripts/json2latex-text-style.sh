#!/bin/bash
source style-lib.sh
jsonFile="$(basename $1)"
jsonFolder=$(dirname "$(realpath "$jsonFile")")
installFolder="$(config_get installDir)"
cd $installFolder
#echo $installFolder
jsonFilename="$(basename $jsonFile .json)"
#styleFile="$jsonFilename-text-style.tex"
themeFile="$jsonFilename-text-theme.tex"
request=$(yad --title="Convert json to latex-text-style.tex?" --text="" \
	--form --width 500 --separator="~" --item-separator=","  \
	--field="Filename" \
	"$themeFile")
if [ ! $? -eq 1 ];
then
   #cp themes/text-style.tex themes/text-style.tex.back
   cp themes/text-theme.tex themes/text-theme.tex.back
   cp templates/template-text-theme.tex themes/"$themeFile"
   declare -A tags=(["theme-name"]="\"Meta\".\"name\"" ["theme-version"]="\"Meta\".\"version\"" ["text-color"]="\"Normal\".\"text-color\"" ["text-background-color"]="\"Normal\".\"background-color\"" ["section-color"]="\"Section\".\"text-color\"" ["bold-color"]="\"Bold\".\"text-color\"" ["emphasis-color"]="\"Emphasis\".\"text-color\"" ["mark-color"]="\"Mark\".\"text-color\"" ["mark-background-color"]="\"Mark\".\"background-color\"" ["strike-color"]="\"Strike\".\"text-color\"" ["strike-through"]="\"Strike\".\"strike-through\"" ["link-color"]="\"Link\".\"text-color\"" ["page-link-color"]="\"Page-link\".\"text-color\"" ["indent-color"]="\"Indent\".\"text-color\"" ["code-color"]="\"Code\".\"text-color\"" ["verbatim-color"]="\"Verbatim\".\"text-color\"" ["tag-color"]="\"Tag\".\"text-color\"" ["index-color"]="\"Index\".\"text-color\"")
   #echo "${tags[theme-name]}"
   for key in "${!tags[@]}"; do
      sed -i "s/{{$key}}/$(yq -r ".${tags[$key]}" "$jsonFolder"/"$jsonFile" | sed "s/#//g")/g" themes/"$themeFile"
   done
   cp themes/"$themeFile" themes/text-theme.tex
fi
notify-send -a "json2latex-text-style.sh completed" "" "$(date +"%Y-%m-%d") fertig"
