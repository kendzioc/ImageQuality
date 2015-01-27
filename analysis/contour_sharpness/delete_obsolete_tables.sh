#!/bin/bash

if [ "$1" = "-h" ]; then
    echo "Usage: delete_obsolete_tables.sh reference_table lookup_table"
    echo "Use this script in the directory, where the curve.csv files are stored."
    echo "It deletes all input csv tabels, that are complete in the reference_table,\n except the table for searching the breakpoints."
    echo "The reference table can be the out.cvs in the results part."
    echo "The files will be delete if"
    echo "    * the file is not found in the reference_table (in order to delete the non-best-phase tables)"
    echo "    * the data in the reference table is complete for the corresponding file"
    exit 0
fi

for file in Pat*.csv; do
    num=`echo $file | awk -F"_" '{print $1}' | awk -F"-" '{print $2}'`
    thick=`echo $file | awk -F"_" '{print $3}'`
    add=`echo $file | awk -F"_" '{print $5}'`
    phase=`echo $file | awk -F"_" '{print $7}'`
    rec=`echo $file | awk -F"_" '{print $9}' | awk -F"." '{print $1}'`

    # best phase
    best=`cat $2 | grep $num | awk -F"," '{print $2}'`

    # get num without 0 at the beginning
    num2=$num
    if [[ $num = 0* ]]; then
	num2=`echo $num | sed 's/0//g'`
    fi 
    
    catout=`cat $1 | grep "$num\,$thick\,$add\,$phase\,1\,$rec"`
    if [ "x$catout" = "x" ]; then
	# not found -> delete the file
	rm $file
	#n="maus"
    else
	# complete?
	d1=`echo $catout | awk -F"," '{print $7}'`
	d2=`echo $catout | awk -F"," '{print $10}'`
	d3=`echo $catout | awk -F"," '{print $13}'`
	d4=`echo $catout | awk -F"," '{print $16}'`
	if [ ! "x$d1" = "x" ] && [ ! "x$d2" = "x" ] && [ ! "x$d3" = "x" ] && [ ! "x$d4" = "x" ]; then
#	    eval echo "Pat-"$num"_Thickness_5_Addition_0_Phase_"$best"_rec_"$rec".csv"
	    if [[ ! $file = "Pat-"$num"_Thickness_5_Addition_0_Phase_"$best"_rec_"$rec".csv" ]]; then
		rm $file
	    fi
	fi
    fi
    

done
