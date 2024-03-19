#!/bin/bash
#SBATCH --time=00:00:10
#SBATCH --partition=amilan
#SBATCH --qos=normal
#SBATCH --nodes=1   # optional
#SBATCH --ntasks=5 
#SBATCH --job-name=cars
#SBATCH --output=cars.%j.out


# load gnu parallel and anaconda python
module purge
module load gnu_parallel
source /curc/sw/anaconda/default

# run workflow
parallel -j $SLURM_NTASKS < cars_mpg_input_commands_gnuparallel.txt
