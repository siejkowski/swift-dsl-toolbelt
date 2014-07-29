#!/bin/sh

contents=$"<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Workspace\n
\tversion = \"1.0\">\n"

files=( $(ls | grep .md | grep -v "README" | sed -e "s/.md//") )

rm -r *.playground 

for file in "${files[@]}"
do
	playground $file.md -p ios -s css/main.css
	mkdir -p $file.playground/Resources/
	mkdir -p resources/$file/
	cp resources/$file/* $file.playground/Resources/ 2>/dev/null
	contents=$contents$"
   \t<FileRef\n
   \t\tlocation = \"group:"$file".playground\">\n
   \t</FileRef>\n"
done

rm SwiftDSLToolbelt.xcworkspace/contents.xcworkspacedata

contents=$contents$"</Workspace>\n"

echo $contents > SwiftDSLToolbelt.xcworkspace/contents.xcworkspacedata

open SwiftDSLToolbelt.xcworkspace
