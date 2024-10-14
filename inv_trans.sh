#!/bin/bash
module load intel 2>/dev/null
module load nvhpc 2>/dev/null
module load gcc 2>/dev/null

set -x

for f90 in gfortran ifort pgf90
do
  echo "==> $f90 <=="

  x=inv_trans.$f90.x
  $f90 -o inv_trans.$f90.x -g -O0 inv_trans.F90
  exit
  ./$x

done

