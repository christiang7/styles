#!/bin/bash
source style-lib.sh
jsonFile="$(basename $1)"
jsonFolder=$(dirname "$(realpath "$jsonFile")")
installFolder="$(config_get installDir)"
cd $installFolder
#echo $installFolder
jsonFilename="$(basename $jsonFile .json)"
styleFile="$jsonFilename-zim-style.conf"
request=$(yad --title="Convert json to style.conf?" --text="" \
	--form --width 500 --separator="~" --item-separator=","  \
	--field="Filename" \
	"$styleFile")
if [ ! $? -eq 1 ];
then
   cp themes/style.conf themes/style.conf.back
   cp templates/template-zim-style.conf themes/"$styleFile"
   declare -A tags=(["theme-name"]="\"Meta\".\"name\"" ["theme-version"]="\"Meta\".\"version\"" ["font"]="\"Normal\".\"font\"" ["font-size"]="\"Normal\".\"font-size\"" ["text-color"]="\"Normal\".\"text-color\"" ["text-background-color"]="\"Normal\".\"background-color\"" ["section-color"]="\"Section\".\"text-color\"" ["bold-color"]="\"Bold\".\"text-color\"" ["emphasis-color"]="\"Emphasis\".\"text-color\"" ["mark-color"]="\"Mark\".\"text-color\"" ["mark-background-color"]="\"Mark\".\"background-color\"" ["strike-color"]="\"Strike\".\"text-color\"" ["strike-through"]="\"Strike\".\"strike-through\"" ["link-color"]="\"Link\".\"text-color\"" ["page-link-color"]="\"Page-link\".\"text-color\"" ["indent-color"]="\"Indent\".\"text-color\"" ["code-color"]="\"Code\".\"text-color\"" ["verbatim-color"]="\"Verbatim\".\"text-color\"" ["tag-color"]="\"Tag\".\"text-color\"" ["index-color"]="\"Index\".\"text-color\"")
   #echo "${tags[theme-name]}"
   for key in "${!tags[@]}"; do
      sed -i "s/{{$key}}/$(yq -r ".${tags[$key]}" "$jsonFolder"/"$jsonFile")/g" themes/"$styleFile"
   done
   cp themes/"$styleFile" themes/style.conf
fi
