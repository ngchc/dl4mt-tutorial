#!/bin/bash
#PBS -l nodes=1:ppn=24
#PBS -l walltime=4:00:00
#PBS -N session1_default
#PBS -A course
#PBS -q ShortQ

export THEANO_FLAGS=device=cpu,floatX=float32

cd $PBS_O_WORKDIR
python ./translate.py -n -p 20 \
	$HOME/models/model_session1.npz  \
	$HOME/data/europarl-v7.fr-en.en.tok.pkl \
	$HOME/data/europarl-v7.fr-en.fr.tok.pkl \
	$HOME/data/newstest2011.en.tok \
	./newstest2011.trans.fr.tok



