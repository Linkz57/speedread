#!/bin/sh
## This is a small (and poorly written) wrapper around a Perl script named "speedread".
## The original Perl script was written by Pasky at https://github.com/pasky/speedread
## This small wrapper was written by Tyler Francis at https://github.com/Linkz57/speedread
## I just want to read epubs with this.
##
## written with the following programs in mind:
### GNU grep 3.3
### UnZip 6.00 of 20 April 2009, by Debian. Original by Info-ZIP. http://www.info-zip.org/pub/infozip/
### GNU coreutils 8.30
##
## Version 0.1


## TODO: make this a subshell and feed it into another unzip or maybe funzip
for baz in $(unzip -c "$1" OEBPS/content.opf |
grep -oP "(?<=idref=).*" |
grep -i html |
cut -d'"' -f2)
do
	echo $baz
done
