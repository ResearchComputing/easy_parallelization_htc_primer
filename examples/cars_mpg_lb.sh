#!/bin/bash
#SBATCH --time=00:00:10
#SBATCH --partition=amilan
#SBATCH --qos=normal
#SBATCH --nodes=1   # optional
#SBATCH --ntasks=6 
#SBATCH --job-name=cars
#SBATCH --output=cars.%j.out


# load loadbalancer and anaconda python
module purge
module load loadbalance
source /curc/sw/anaconda/default

# run workflow
mpirun lb cars_mpg_input_commands_lb.txt
