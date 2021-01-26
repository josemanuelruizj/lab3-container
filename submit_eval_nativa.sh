#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno16/lab3/data
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
time python k-mer13.py 
time python k-mer14.py  

#Tiempo de ejecucion c++
time c++ K-mer13.cpp
time c++ K-mer14.cpp
