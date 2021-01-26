#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno16/lab3/singularity
#SBATCH -J LAB3JMRJ
#SBATCH --cpus-per-task=16
#SBATCH --mail-type=END	#END/START/NONE
#SBATCH --mail-user=josemanuel.ruizj@um.es

# Affinity
#export KMP_AFFINITY=granularity=fine,compact

# Number of threads
#export OMP_NUM_THREADS=32
#16,32

#Tiempo de ejecuión para python 
module add singularity/3.7.0 

time  ./python_latest.sif python ../data/k-mer13.py 
time  ./python_latest.sif python ../data/k-mer14.py

#Tiempo de ejecucion c++
time  ./python_latest.sif ../data/k-mer13 
time  ./python_latest.sif ../data/k-mer14
