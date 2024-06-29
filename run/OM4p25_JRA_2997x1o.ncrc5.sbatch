#!/usr/bin/bash
#SBATCH --time=00:30:00
#SBATCH --ntasks=2997
#SBATCH --account=gfdl_f
#SBATCH --qos=normal                                                                                                    
#SBATCH --partition=batch                                                                                               
#SBATCH --mail-user=Niki.Zadeh@noaa.gov                                                                                 
#SBATCH --export=NONE                                                                                                   
#SBATCH --clusters=c5                                                                                                   
##
plat=ncrc5
comp=intel23cl
target=repro
atm_ranks=0
atm_threads=1
ocn_ranks=2997
config=${ocn_ranks}x1o
date=`date '+%Y%m%d_%H%M'`
bar=run2days.$date.$SLURM_JOB_ID

echo "Hello world, I am running on node $HOSTNAME"
sleep 2
##
root_dir=$HOME/projects/CM4_github
exp_dir=$root_dir/workdirs/OM4p25_JRA55do1.5_r6_cycle1_2997x1o
build_dir=$root_dir/exec.$plat-$comp.$target
executable=$build_dir/om4.x
echo executable is $executable
##
cd $exp_dir
source $build_dir/templates/$plat/$comp.env
echo $LD_LIBRARY_PATH

#module load anaconda3/2021.11
#module use /home/rdslater/opt/Modules/modulefiles
#module load srun-multi
#which srun-multi
export KMP_STACKSIZE=512m
export NC_BLKSZ=1M
## advisory
#export MPICH_MPIIO_CB_ALIGN=2
#export MALLOC_MMAP_MAX_=0
#export MALLOC_TRIM_THRESHOLD_=536870912
## necessary for OpenMP when using Intel
#export SLURM_CPU_BIND=verbose

runCommand="srun --ntasks=$ocn_ranks --export=ALL --cpus-per-task=1 $executable"
echo $runCommand
${runCommand} | tee stdout.$plat-$comp.$target.$config.$bar 

mv ocean.stats ocean.stats.$plat-$comp.$target.$config.$bar

