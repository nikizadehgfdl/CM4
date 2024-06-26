#!/bin/env bash
#SBATCH --time=01:30:00
#SBATCH --ntasks=2997
#SBATCH --mem-per-cpu=400M
#SBATCH --exclusive
#SBATCH --account=gfdlh
#SBATCH --qos=cimes-short
##
plat=stellar
comp=intel22
target=prod
atm_ranks=0
atm_threads=1
ocn_ranks=2997
config=${ocn_ranks}x1o
bar=run2days.intel19.$SLURM_JOB_ID

echo "Hello world, I am running on node $HOSTNAME"
sleep 2
date
##
#The goal is to run this:
#cd /scratch/cimes/nzadeh/workDir/CM4_piControl_C_1x1m0d_432x2a_2997x1o_FMS2023.04_mom6_20231130
#setenv LD_LIBRARY_PATH ${LD_LIBRARY_PATH}:/scratch/cimes/nzadeh/CM4_github/exec/fms/build/libFMS/.libs/
#srun --ntasks=216 --cpus-per-task=2 --export=ALL,OMP_NUM_THREADS=2 /scratch/cimes/nzadeh/CM4_github/exec/cm4.x : --ntasks=648 --cpus-per-task=1 --export=ALL,OMP_NUM_THREADS=1 /scratch/cimes/nzadeh/CM4_github/exec/cm4.x |& tee stdout.stellar.A216x2O648x1
#
root_dir=/home/$USER/CM4_github
exp_dir=/scratch/cimes/nzadeh/workDir/OM4p25_JRA55do1.5_r6_cycle1_2997x1o
build_dir=$root_dir/exec.noopenmp.intel19/
#executable=/home/nzadeh/platforms/mom6/builds/build/stellar-intel22/ocean_ice/prod/MOM6SIS2
executable=$build_dir/om4.x
##
cd $exp_dir
source $build_dir/templates/stellar.intel19.env
#export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:$build_dir/fms/build/libFMS/.libs
echo $LD_LIBRARY_PATH

#module load anaconda3/2021.11
#module use /home/rdslater/opt/Modules/modulefiles
#module load srun-multi
#which srun-multi
export KMP_STACKSIZE=512m
#export MPICH_MPIIO_CB_ALIGN=2
#export MALLOC_MMAP_MAX_=0
#export MALLOC_TRIM_THRESHOLD_=536870912
#export NC_BLKSZ=1M
## necessary for OpenMP when using Intel
#export KMP_STACKSIZE=512m
#export SLURM_CPU_BIND=verbose

runCommand="srun --ntasks=$ocn_ranks --export=ALL --cpus-per-task=1 --cpu-bind=cores $executable"
echo $runCommand
${runCommand} | tee stdout.$plat-$comp.$target.$config.$bar 

mv ocean.stats ocean.stats.$plat-$comp.$target.$config.$bar

