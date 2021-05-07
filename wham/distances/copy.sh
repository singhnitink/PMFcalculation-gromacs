#!bin/bash
####0.4 0.6 0.8 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0 3.2
rm A* data.i
e=1000
##e is number of lines in ONE pullx file
d=10
for a in 0.2 0.4 0.6 0.8 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0 3.2
do 
for b in 1
do 
tail -n+18 /data/pc_backup/singh_nitin/new_charmm36/SMD/gromacs_pmf/na_na_pmf/PMF_run/${a}/A${a}_pullx_${b}.xvg > pullx${a}_${b}.xvg
sed "s/XXX/$a/g;s/YYY/$b/g;s/ZZZZ/$e/g" yank.f > Ayank${a}_${b}.f
gfortran Ayank${a}_${b}.f
./a.out
rm Ayank${a}_${b}.f a.out pullx${a}_${b}.xvg
done
cat A${a}_DIST_*.dat > A${a}_DIST.dat
c=$(echo $a*$d | bc)
echo "distances/A${a}_DIST.dat    ${c}    5.00" >> data.i
done