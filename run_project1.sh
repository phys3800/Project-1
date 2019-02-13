#!/bin/sh
# run_project1.sh
# shell script that runs everything needed for Project #1
# produces sum summary output

make clean
make 
./differentiate
echo
echo Results for 1st and 2nd order differentiation
echo 
cat diff_results.dat
echo 
echo

echo 
echo Results for an n-point Gauss-Legendre integration
echo 
./run_integrate.sh
