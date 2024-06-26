#!/bin/env bash
#SBATCH --time=00:40:00
#SBATCH --ntasks=3584
#SBATCH --mem-per-cpu=4000M
#SBATCH --exclusive
#SBATCH --account=gfdlh
#SBATCH --qos=cimes-short
##
plat=stellar
comp=intel19
target=prod-openmp
atm_ranks=432
atm_threads=1
ocn_ranks=2997
config=${atm_ranks}x${atm_threads}a_${ocn_ranks}x1o
bar=run2days.$SLURM_JOB_ID

echo "Hello world, I am running on node $HOSTNAME"
sleep 2
date
##
root_dir=/home/$USER/CM4_github
exp_dir=/scratch/cimes/nzadeh/workDir/CM4_piControl_C_432x1a_2997x1o
build_dir=$root_dir/exec.noopenmp.intel19
executable=$build_dir/cm4.x
##
cd $exp_dir
source $build_dir/templates/stellar.intel19.env
echo $LD_LIBRARY_PATH
#use srun-multi ported by Rick Slater
module load anaconda3/2021.11
module use /home/rdslater/opt/Modules/modulefiles
module load srun-multi
which srun-multi
#export MPICH_MPIIO_CB_ALIGN=2
#export MALLOC_MMAP_MAX_=0
#export MALLOC_TRIM_THRESHOLD_=536870912
#export NC_BLKSZ=1M
## necessary for OpenMP when using Intel
export KMP_STACKSIZE=512m
#export SLURM_CPU_BIND=verbose

runCommand="srun-multi --ntasks=$atm_ranks --export=ALL,OMP_NUM_THREADS=$atm_threads --cpus-per-task=$atm_threads $executable : --ntasks=$ocn_ranks --cpus-per-task=1 --export=ALL,OMMP_NUM_THREADS=1 $executable"

echo $runCommand
${runCommand} | tee stdout.$plat-$comp.$target.$config.$bar

mv ocean.stats ocean.stats.$plat-$comp.$target.$config.$bar

