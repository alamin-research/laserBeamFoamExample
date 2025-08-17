#!/bin/sh
## Specifying a job name
#SBATCH --job-name=LaserBeamFoam_OpenFOAM
## Reserving one node and 1 cpus
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
## Reserving a specific node "node004" and 36 cpus (uncomment if needed)
##SBATCH --nodelist=node004
#SBATCH --time=00:55:00
#SBATCH --account=PNS0496
#SBATCH --mem=36GB
#SBATCH --mail-user=aamin1@udayton.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --error=./error_%j.txt
#SBATCH --output=./output_%j.txt

echo Working directory is $SLURM_SUBMIT_DIR
echo Job name is $SLURM_JOB_NAME
cd $SLURM_SUBMIT_DIR
echo Running on host `hostname`
echo Time is `date`
echo Directory is `pwd`
echo The following processors are allocated to this job:
echo $SLURM_JOB_NODELIST
NP=$SLURM_NTASKS

# run the simulation
echo "Number of threads using SLURM NTASKS: ${SLURM_NTASKS}"

# Load the module for ansys appropriate installation if necessary
module purge
module load gcc/13.2.0
module load openmpi/5.0.2

# Load OpenFOAM environment
source $HOME/OpenFOAM-10/etc/bashrc

# verify OpenFoam environment loaded
echo $WM_PROJECT_DIR

./Allrun