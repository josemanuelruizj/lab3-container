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
echo "Tiempo de python optimizado"
time python k-mer14opt.py 
echo "Tiempo de c++"
time ./k-mer14
