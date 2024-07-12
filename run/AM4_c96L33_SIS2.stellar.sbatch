#!/bin/env bash
#SBATCH --time=01:30:00
#SBATCH --ntasks=432
#SBATCH --mem-per-cpu=4000M
#SBATCH --exclusive
#SBATCH --account=gfdlh
#SBATCH --qos=cimes-short
##
plat=stellar
comp=intel19
target=prod-openmp
atm_ranks=216
atm_threads=2
ocn_ranks=0
config=${atm_ranks}x${atm_threads}a
date=`date '+%Y%m%d_%H%M'`
bar=run31days.$date.$SLURM_JOB_ID

echo "Hello world, I am running on node $HOSTNAME"
sleep 2
##
root_dir=/home/$USER/CM4_github
exp_dir=$root_dir/workDir/AM4_c96L33_SIS2_216x2a
build_dir=$root_dir/exec.$plat-$comp.$target
executable=$build_dir/cm4.x
##
cd $exp_dir
source $build_dir/templates/stellar/$comp.env
echo $LD_LIBRARY_PATH

#module load anaconda3/2021.11
#module use /home/rdslater/opt/Modules/modulefiles
#module load srun-multi
#which srun-multi
export KMP_STACKSIZE=512m
export NC_BLKSZ=1M
#export MPICH_MPIIO_CB_ALIGN=2
#export MALLOC_MMAP_MAX_=0
#export MALLOC_TRIM_THRESHOLD_=536870912
## necessary for OpenMP when using Intel
export SLURM_CPU_BIND=verbose

runCommand="srun --ntasks=$atm_ranks --export=ALL,OMP_NUM_THREADS=$atm_threads --cpus-per-task=$atm_threads --cpu-bind=cores $executable"
echo $runCommand
${runCommand} | tee stdout.$plat-$comp.$target.$config.$bar 

