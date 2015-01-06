#!/bin/bash

if [ "$1" = "-h" ]; then
    echo "Usage: analyseFiles.sh lookup_table R_script (output_directory)"
    echo "Use this script in the directory, where the curve.csv files are stored."
    exit 0
fi

function analyse_table {
    # Usage: analyse_table $pat $2 $patfile $3 $best
    patnum=`echo $1 | awk -F"-" '{print $2}'`
    thick=`echo $3 | awk -F"_" '{print $3}'`
    add=`echo $3 | awk -F"_" '{print $5}'`
    phase=`echo $3 | awk -F"_" '{print $7}'`
    rec=`echo $3 | awk -F"_" '{print $9}' | awk -F"." '{print $1}'`

    # output path?
    outtmp="outtmp_$3"
    if [ "x$4" != "x" ]; then
	outtmp=$4/$outtmp
    fi    

    ./$2 -i $3 -b $breakstr > $outtmp
    d1=`cat $outtmp | grep d_1 | awk -F"," '{print $2}'`
    d2=`cat $outtmp | grep d_2 | awk -F"," '{print $2}'`
    d3=`cat $outtmp | grep d_3 | awk -F"," '{print $2}'`
    d4=`cat $outtmp | grep d_4 | awk -F"," '{print $2}'`
    
    min1=`cat $outtmp | grep d_1 | awk -F"," '{print $3}'`
    min2=`cat $outtmp | grep d_2 | awk -F"," '{print $3}'`
    min3=`cat $outtmp | grep d_3 | awk -F"," '{print $3}'`
    min4=`cat $outtmp | grep d_4 | awk -F"," '{print $3}'`

    max1=`cat $outtmp | grep d_1 | awk -F"," '{print $4}'`
    max2=`cat $outtmp | grep d_2 | awk -F"," '{print $4}'`
    max3=`cat $outtmp | grep d_3 | awk -F"," '{print $4}'`
    max4=`cat $outtmp | grep d_4 | awk -F"," '{print $4}'`
    
    rm $outtmp

    # output path?
    outcsv="out.csv"
    if [ "x$4" != "x" ]; then
	outcsv=$4/$outcsv
    fi    

    # is best phase?
    isbest=0
    if [ $5 = $phase ]; then
	isbest=1
    fi

    # write results to file
    echo $patnum,$thick,$add,$phase,$isbest,$rec,$d1,$min1,$max1,$d2,$min2,$max2,$d3,$min3,$max3,$d4,$min4,$max4 | tee -a $outcsv
}

# output path?
outcsv="out.csv"
if [ "x$3" != "x" ]; then
    outcsv=$3/$outcsv
    
    # create outputfolder, if does not exist
    if [ ! -d "$3" ]; then
	mkdir $3
    fi

fi    

# create new ouput table
echo "pat,thick,add,phase,best,rec,d1,min1,max1,d2,min2,max2,d3,min3,max3,d4,min4,max4" | tee $outcsv

# get list of files with 0, 0, AIDR
FILES=`ls *Thickness_8_Addition_2_Phase_*_rec_AIDR.csv | paste -s`

# find best phase from lookup table
lastpat="" # patient of last file

# loop over patient directories
for file in $(echo $FILES)
do
    echo "do something with" $file
    pat=`echo $file | awk -F"_" '{print $1}'`
    if [ "$pat" != "$lastpat" ]; then
	echo "drin"
	# best phase
	best=`cat $1 | grep $pat  | awk -F"," '{print $2}'`
	echo $best
	first_file=`ls $pat*Thickness_8_Addition_2_Phase_$best*_rec_AIDR.csv | paste -s`
	echo $first_file
	breakstr=`./$2 -i $first_file | grep breakpoints | awk -F"=" '{print $2}'`
	echo $breakstr

	# all other files of the patient
	PATFILES=`ls $pat*.csv | paste -s`
	for patfile in $(echo $PATFILES)
	do

	    analyse_table $pat $2 $patfile $3 $best &

	    while (( $(jobs | wc -l) >= 40 )); do
		sleep 0.1
		jobs > /dev/null
	    done

	done
	wait

	# combine all pdfs to one
	first_pdf=`echo $first_file | sed 's/csv/pdf/g'`
	PDFFILES=`ls $pat*Thickness*.pdf | paste -s`

	# output path?
	outpdf=$pat.pdf
	if [ "x$1" != "x" ]; then
	    outpdf=$3/$outpdf
	fi

	echo $first_file $first_pdf
	pdftk $first_pdf $PDFFILES cat output $outpdf
	rm $PDFFILES
    fi
    lastpat=$pat
done



exit 0
