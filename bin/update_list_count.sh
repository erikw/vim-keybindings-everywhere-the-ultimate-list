#!/usr/bin/env sh
# Update the count of listed programs / extension in the README.md
# TODO set this up as a GitHub action to run on merge on master?

MARKER_NATIVE="<magic-marker-nbr-native>"
MARKER_EXTENSIONS="<magic-marker-nbr-extensions>"

SIGN_NATIVE=:white_check_mark:
SIGN_EXTENSIONS=:heavy_plus_sign:


TEMPLATE_NATIVE="[![${MARKER_NATIVE}](https://img.shields.io/badge/Native%%20programs%%20listed-%d-brightgreen)](#)"
TEMPLATE_EXTENSIONS="[![${MARKER_EXTENSIONS}](https://img.shields.io/badge/Extensions%%20listed-%d-blue)](#)"

count_occurences() {
	local sign="$1"
	c=$(grep "$sign" README.md | wc -l)
	#echo $(($c-1))  # Listed in explanation - does not count!
	($c-1)  # Listed in explanation - does not count!
}

update_count() {
	local count="$1"
	local template="$2"
	local search="$3"

	img_tag=$(printf $template $count)
	sed -i.bak -e "s|^.*${search}.*$|${img_tag}|" README.md
	test -e README.md.bak && rm README.md.bak
}

count_native=$(count_occurences $SIGN_NATIVE)
count_extensions=$(count_occurences $SIGN_EXTENSIONS)

update_count $count_native $TEMPLATE_NATIVE $MARKER_NATIVE
update_count $count_extensions $TEMPLATE_EXTENSIONS $MARKER_EXTENSIONS
