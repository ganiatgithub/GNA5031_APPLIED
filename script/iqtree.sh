#!/bin/bash -l

WORKDIR=

cd $WORKDIR
#mkdir - data result script
#cat data/*fa > data/input.fa

cd data
mamba activate iqtree
#mafft --preservecase --auto --reorder --thread -1 input.fa > input.msa
trimal -in input.msa -out input.msa.trim -automated1



iqtree -s input.msa.trim -alrt 1000 -bb 1000 -m TEST -nt 4
