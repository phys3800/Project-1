#!/bin/sh
# run_integrate.sh
# schell script useful for running the program integrate
# needs the file list_weight_files.dat, which contains a list of
# parameter file names


cat list_weight_files.dat | while read f
# This reads the filename in each line of
# list_weight_files.dat and stores it in a variable f

# if you want to retrieve the value of a variable, you
# must use $f

# And for each file it DOES the following
do
  n=`echo $f | awk -F"_" '{print $2}'`
#  This just gets the number after the _ in the file name
#  and stores it in the variable n.  There are other ways
#  of doing this.

(./integrate | tail -n 1) << ! 
$f 
$n 
!


done
