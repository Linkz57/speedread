#!/bin/sh
## This is a small (and poorly written) wrapper around a Perl script named "speedread".
## The original Perl script was written by Pasky at https://github.com/pasky/speedread
## This small wrapper was written by Tyler Francis at https://github.com/Linkz57/speedread
## I just want to read epubs with this.
##
## Version 0.1

for baz in $(unzip -c "$1" OEBPS/content.opf |
grep -oP "(?<=idref=).*" |
grep -i html |
cut -d'"' -f2 |
head -n3)
do
	echo $baz
done
