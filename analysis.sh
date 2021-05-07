#!/bin/bash
b=1
##b is the production run number
##a is the window
for a in 0.2 0.4 0.6 0.8 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0 3.2
do
cp ./"$a"/A"$a"_prd_1.tpr Analysis/.
cp ./"$a"/A"$a"_pullf_1.xvg  Analysis/.
cp ./"$a"/A"$a"_pullx_1.xvg  Analysis/.
done

rm tpr-files${b}.dat pullf-files${b}.dat pullx-files${b}.dat

for a in 0.2 0.4 0.6 0.8 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0 3.2
do
echo A${a}_prd_${b}.tpr >> tpr-files${b}.dat
echo A${a}_pullf_${b}.xvg >> pullf-files${b}.dat
echo A${a}_pullx_${b}.xvg >> pullx-files${b}.dat
done
cd Analysis
mv ../tpr-files${b}.dat .
mv ../pullf-files${b}.dat .
mv ../pullx-files${b}.dat .
module load gromacs2020-cpu
gmx_mpi wham -it tpr-files${b}.dat -if pullf-files${b}.dat -zprof0 1.5 -o -hist -unit kCal
####set datafile commentschars '#@'