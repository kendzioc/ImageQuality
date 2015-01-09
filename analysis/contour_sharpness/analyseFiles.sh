#!/bin/bash

bestthick=8
bestadd=2
bestrec=AIDR

if [ "$1" = "-h" ]; then
    echo "Usage: analyseFiles.sh lookup_table R_script (best_thickness) (best_addition) (best_reco) (output_directory)"
    echo "Use this script in the directory, where the curve.csv files are stored."
    echo "Default values:"
    echo "    best_tickness = $bestthick"
    echo "    best_addition = $bestadd"
    echo "    best_reco     = $bestrec"
    echo "    outputdiretory = ."
    exit 0
fi

if [ "x$3" != "x" ]; then bestthick=$3; fi
if [ "x$4" != "x" ]; then bestadd=$4; fi
if [ "x$5" != "x" ]; then bestrec=$5; fi

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
if [ "x$6" != "x" ]; then
    outcsv=$6/$outcsv
    
    # create outputfolder, if does not exist
    if [ ! -d "$6" ]; then
	mkdir $6
    fi

fi    

# create new ouput table
echo "pat,thick,add,phase,best,rec,d1,min1,max1,d2,min2,max2,d3,min3,max3,d4,min4,max4" | tee $outcsv

# get list of files with best conditions
FILES=`eval ls "*Thickness_"$bestthick"_Addition_"$bestadd"_Phase_*_rec_"$bestrec".csv" | paste -s`

# find best phase from lookup table
lastpat="" # patient of last file

# loop over patient directories
for file in $(echo $FILES)
do
    pat=`echo $file | awk -F"_" '{print $1}'`
    if [ "$pat" != "$lastpat" ]; then
	# best phase
	best=`cat $1 | grep $pat  | awk -F"," '{print $2}'`
	best2=`expr $best - 1`
	best3=`expr $best - 2`
	best4=`expr $best - 3`
	first_file=`eval ls $pat"*Thickness_"$bestthick"_Addition_"$bestadd"_Phase_"$best"*_rec_"$bestrec".csv" | paste -s`
	breakstr=`./$2 -i $first_file | grep breakpoints | awk -F"=" '{print $2}'`
	echo $breakstr

	# all other files of the patient

	# !!!!!!!!!   for now just with best phase    !!!!!!!!!!!!!!

	PATFILES=`ls $pat*_Addition_{0,1}*Phase_$best*.csv $pat*_Addition_{2,3}*Phase_$best2*.csv $pat*_Addition_5*Phase_$best3*.csv $pat*_Addition_7*Phase_$best4*.csv | paste -s`
	for patfile in $(echo $PATFILES)
	do
	    add=`echo $patfile | awk -F"_" '{print $5}'`

	    case $add in

		0|1) best_here=$best 
		    ;;
		2|3) best_here=$best2
		    ;;
		5) best_here=$best3
		    ;;
		7) best_here=$best4 
	    esac

	    # call function for analysis
	    analyse_table $pat $2 $patfile $6 $best_here &

	    # multiple jobs
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
	    outpdf=$6/$outpdf
	fi

	echo $first_file $first_pdf
	pdftk $first_pdf $PDFFILES cat output $outpdf
	rm $PDFFILES
    fi
    lastpat=$pat
done

exit 0
