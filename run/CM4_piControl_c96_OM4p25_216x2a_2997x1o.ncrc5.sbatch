#!/usr/bin/bash
#SBATCH --time=00:30:00
#SBATCH --nodes=28
#SBATCH --account=gfdl_f
#SBATCH --qos=normal                                                                                                    
#SBATCH --partition=batch                                                                                               
#SBATCH --mail-user=Niki.Zadeh@noaa.gov                                                                                 
#SBATCH --export=NONE                                                                                                   
#SBATCH --clusters=c5                                                                                                   
##
plat=ncrc5
comp=intel23cl
target=prod-openmp
atm_ranks=216
atm_threads=2
ocn_ranks=2997
config=${atm_ranks}x${atm_threads}a_${ocn_ranks}x1o
date=`date '+%Y%m%d_%H%M'`
bar=run2days.$date.$SLURM_JOB_ID

echo "Hello world, I am running on node $HOSTNAME"
sleep 2
##
root_dir=$HOME/projects/CM4_github
exp_dir=$root_dir/workdirs/CM4_piControl_C_216x2a_2997x1o
build_dir=$root_dir/exec.$comp
executable=$build_dir/cm4.x
echo executable is $executable
##
cd $exp_dir
source $build_dir/templates/$plat.$comp.env
echo $LD_LIBRARY_PATH
##On Stellar use srun-multi ported by Rick Slater
#module load anaconda3/2021.11
#module use /home/rdslater/opt/Modules/modulefiles
#module load srun-multi
#which srun-multi
## necessary for OpenMP when using Intel
export KMP_STACKSIZE=512m
export NC_BLKSZ=1M
## advisory
#export MPICH_MPIIO_CB_ALIGN=2
#export MALLOC_MMAP_MAX_=0
#export MALLOC_TRIM_THRESHOLD_=536870912
#export SLURM_CPU_BIND=verbose

runCommand="srun --ntasks=$atm_ranks --export=ALL,OMP_NUM_THREADS=$atm_threads --cpus-per-task=$atm_threads $executable : --ntasks=$ocn_ranks --cpus-per-task=1 --export=ALL,OMMP_NUM_THREADS=1 $executable"

echo $runCommand
${runCommand} | tee stdout.$plat-$comp.$target.$config.$bar

mv ocean.stats ocean.stats.$plat-$comp.$target.$config.$bar

