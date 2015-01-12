#!/bin/bash

if [ "$1" = "-h" ]; then
    echo "Usage: stick_first_plots.sh (input_directory)"
    exit 0
fi

# go to input directory
if [ "x$1" != "x" ]; then
    cd $1
fi

#Set the filename on the line below:
DESTINATION="firstpages.pdf"

#Here is the temporary directory:
tempdir="/tmp/pdfpage1"
mkdir $tempdir
for name in Pat*.pdf ; do
        pdftk "A=$name" cat A1 output "$tempdir/$name"
done
pdftk $tempdir/*.pdf cat output "$DESTINATION"
rm -r $tempdir
