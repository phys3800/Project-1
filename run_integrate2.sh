#!/bin/sh
# run_integrate2.sh
# shell script useful for running the program integrate for several cases,
# i.e., different orders of Laguerre polynomials used
# assumes the existence of file called wieghts.dat_#, where # is the order
# of the Laguerre polynomial


for n in 2 4 8 16 20 24 28 32
do

   f=weights.dat_$n

   (./integrate | tail -n 1) << ! 
      $f 
      $n 
!

done
