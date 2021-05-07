#!/bin/bash
module load gromacs2020-cpu
##0.4 3.2 0.8 1.2 1.6 2.0 2.4 2.8
for a in 0.2 0.6 1.0 1.4 1.8 2.2 2.6 3.0
do 
mkdir ./$a
cd ./$a
sed "s/XXX/$a/g" ../mdp/minim.mdp > A"$a"_minim.mdp
sed "s/XXX/$a/g" ../mdp/eqm.mdp > A"$a"_eqm.mdp
sed "s/XXX/$a/g" ../mdp/prd.mdp > A"$a"_prd.mdp
cp ../ndx/index.ndx . 
cp ../gro/solv.gro A$a.gro
cp ../top/topol.top A$a.top
sed "s/XXX/$a/g" ../gromacs_runcommand.sh > gromacs_runcommands${a}.sh
chmod 746 gromacs_runcommands${a}.sh
bash gromacs_runcommands${a}.sh
cd ..
done 
