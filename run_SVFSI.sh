#!/bin/csh

#$ -M anematba@nd.edu	 # Email address for job notification
#$ -m abe		 # Send mail when job begins, ends and aborts
#$ -pe smp 4		 # Specify parallel environment and legal core size
#$ -q long		 # Specify queue
#$ -N SVFSI	         # Specify job name

module load mpich         # Required modules

mpiexec -n 4 ./svFSI-build/mysvfsi cylinder.txt
