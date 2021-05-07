gmx_mpi grompp -f AXXX_minim.mdp -n index.ndx -c AXXX.gro  -r AXXX.gro -p AXXX.top -o AXXX_min.tpr -maxwarn 2
gmx_mpi mdrun  -v -s AXXX_min.tpr -o AXXX_min.trr -c AXXX_min.gro -e AXXX_min.edr -g AXXX_min.log -mn index.ndx -ntomp 5
#
gmx_mpi grompp  -f AXXX_eqm.mdp -n index.ndx -c AXXX_min.gro -p AXXX.top -r AXXX.gro -o AXXX_eqm_1.tpr -maxwarn 2
gmx_mpi mdrun   -v -s AXXX_eqm_1.tpr -x AXXX_eqm_1.xtc -c AXXX_eqm_1.gro -e AXXX_eqm_1.edr -g AXXX_eqm_1.log -mn index.ndx  -ntomp 25
#
gmx_mpi grompp  -f AXXX_prd.mdp -n index.ndx -c AXXX_eqm_1.gro -r AXXX.gro -p AXXX.top -o AXXX_prd_1.tpr -maxwarn 3
gmx_mpi mdrun   -v -s AXXX_prd_1.tpr -x AXXX_prd_1.xtc -c AXXX_prd_1.gro -e AXXX_prd_1.edr -g AXXX_prd_1.log -mn index.ndx -pf AXXX_pullf_1.xvg -px AXXX_pullx_1.xvg -ntomp 25
# 
#gmx_mpi grompp  -f AXXX_prd.mdp  -n index.ndx -c AXXX_prd_1.gro -p AXXX.top -o AXXX_prd_2.tpr -maxwarn 3
#gmx_mpi mdrun   -v -s AXXX_prd_2.tpr -x AXXX_prd_2.xtc -c AXXX_prd_2.gro -e AXXX_prd_2.edr -g AXXX_prd_2.log -mn index.ndx -pf AXXX_pullf_2.xvg -px AXXX_pullx_2.xvg 
# 
#gmx_mpi grompp -f AXXX_prd.mdp -n index.ndx -c AXXX_prd_2.gro -p AXXX.top -o AXXX_prd_3.tpr -maxwarn 2
#gmx_mpi mdrun  -v -s AXXX_prd_3.tpr -x AXXX_prd_3.xtc -c AXXX_prd_3.gro -e AXXX_prd_3.edr -g AXXX_prd_3.log -mn index.ndx -pf AXXX_pullf_3.xvg -px AXXX_pullx_3.xvg 
# 
#gmx_mpi grompp -f AXXX_prd.mdp -n index.ndx -c AXXX_prd_3.gro -p AXXX.top -o AXXX_prd_4.tpr -maxwarn 2
#gmx_mpi mdrun  -v -s AXXX_prd_4.tpr -x AXXX_prd_4.xtc -c AXXX_prd_4.gro -e AXXX_prd_4.edr -g AXXX_prd_4.log -mn index.ndx -pf AXXX_pullf_4.xvg -px AXXX_pullx_4.xvg  
#
#gmx_mpi grompp -f AXXX_prd.mdp -n index.ndx -c AXXX_prd_4.gro -p AXXX.top -o AXXX_prd_5.tpr -maxwarn 2
#gmx_mpi mdrun  -v -s AXXX_prd_5.tpr -x AXXX_prd_5.xtc -c AXXX_prd_5.gro -e AXXX_prd_5.edr -g AXXX_prd_5.log -mn index.ndx -pf AXXX_pullf_5.xvg -px AXXX_pullx_5.xvg 
#
#gmx_mpi grompp -f AXXX_prd.mdp -n index.ndx -c AXXX_prd_5.gro -p AXXX.top -o AXXX_prd_6.tpr -maxwarn 2
#gmx_mpi mdrun  -v -s AXXX_prd_6.tpr -x AXXX_prd_6.xtc -c AXXX_prd_6.gro -e AXXX_prd_6.edr -g AXXX_prd_6.log -mn index.ndx -pf AXXX_pullf_6.xvg -px AXXX_pullx_6.xvg 
#
#gmx_mpi grompp -f AXXX_prd.mdp -n index.ndx -c AXXX_prd_6.gro -p AXXX.top -o AXXX_prd_7.tpr -maxwarn 2
#gmx_mpi mdrun  -v -s AXXX_prd_7.tpr -x AXXX_prd_7.xtc -c AXXX_prd_7.gro -e AXXX_prd_7.edr -g AXXX_prd_7.log -mn index.ndx -pf AXXX_pullf_7.xvg -px AXXX_pullx_7.xvg 
#
#gmx_mpi grompp -f AXXX_prd.mdp -n index.ndx -c AXXX_prd_7.gro -p AXXX.top -o AXXX_prd_8.tpr -maxwarn 2
#gmx_mpi mdrun  -v -s AXXX_prd_8.tpr -x AXXX_prd_8.xtc -c AXXX_prd_8.gro -e AXXX_prd_8.edr -g AXXX_prd_8.log -mn index.ndx -pf AXXX_pullf_8.xvg -px AXXX_pullx_8.xvg 
#
#gmx_mpi grompp -f AXXX_prd.mdp -n index.ndx -c AXXX_prd_8.gro -p AXXX.top -o AXXX_prd_9.tpr -maxwarn 2
#gmx_mpi mdrun  -v -s AXXX_prd_9.tpr -x AXXX_prd_9.xtc -c AXXX_prd_9.gro -e AXXX_prd_9.edr -g AXXX_prd_9.log -mn index.ndx -pf AXXX_pullf_9.xvg -px AXXX_pullx_9.xvg -ntomp 5
#
#gmx_mpi grompp -f AXXX_prd.mdp -n index.ndx -c AXXX_prd_9.gro -p AXXX.top -o AXXX_prd_10.tpr -maxwarn 2
#gmx_mpi mdrun  -v -s AXXX_prd_10.tpr -x AXXX_prd_10.xtc -c AXXX_prd_10.gro -e AXXX_prd_10.edr -g AXXX_prd_10.log -mn index.ndx -pf AXXX_pullf_10.xvg -px AXXX_pullx_10.xvg 
