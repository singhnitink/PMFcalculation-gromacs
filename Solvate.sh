#gmx_mpi pdb2gmx -f lysine_system_autopsf.pdb -o system.gro -water tip3p
#gmx_mpi editconf -f system.gro -o newbox.gro -center 2 2 2.5 -d 1.0 
gmx_mpi solvate -cp renumber.gro -cs spc216.gro -p topol.top -o solv.gro -box 4 4 8
gmx_mpi grompp -f ions.mdp -c solv.gro -p topol.top -o ions.tpr -maxwarn 2
gmx_mpi genion -s ions.tpr -o solv_ions.gro -p topol.top -pname NA -nname CL -neutral