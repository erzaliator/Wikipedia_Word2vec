#!/bin/bash
#SBATCH -A research
#SBATCH -n 40
#SBATCH --gres=gpu:4
#SBATCH --mem-per-cpu=2048
#SBATCH --time=4-00:00:00
#SBATCH --mail-type=END
#module load opencv/3.3.0
module load cuda/8.0
module load cudnn/7-cuda-8.0


set -e
#export LD_LIBRARY_PATH=/usr/local/apps/cuDNN/5.1/lib64:$LD_LIBRARY_PATH
#export CPATH=/usr/local/apps/cuDNN/5.1/include:$CPATH 
#export LIBRARY_PATH=/usr/local/apps/cuDNN/5.1/lib64:$LIBRARY_PATH
#export PYTHONUNBUFFERED="True"
#export THEANO_FLAGS="floatX=float32, device=cuda*,assert_no_cpu_op='raise'"
export CUDA_VISIBLE_DEVICES=0,1,2,3,4

#make the wikipedia corpus
#wget -P https://dumps.wikimedia.org/enwiki/latest/enwiki-latest-pages-articles.xml.bz2

#python2 process_wiki.py enwiki-latest-pages-articles.xml.bz2 enwiki-latest-pages-articles.txt

#rm enwiki-latest-pages-articles.xml.bz2

#change paths in main.py
#python3 train_word2vec_model.py enwiki-latest-pages-articles.txt enwiki-latest-pages-articles-5ngram-300window.tmpmodel enwiki-latest-pages-articles-5ngram-300window.model
#rm *.npy
#rm enwiki-latest-pages-articles.txt
# .model file is the binary version and .tmpmodel is the text version afaik
