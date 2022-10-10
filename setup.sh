git clone https://github.com/ASUS-AICS/LibMultiLabel.git
cd LibMultiLabel 
source /home/faculty/cjlin/\
miniconda3/bin/activate LibMultiLabel
mkdir -p /tmp2/$USER/runs
mkdir -p /tmp2/$USER/.vector_cache
ln -s /tmp2/$USER/runs runs
ln -s /tmp2/$USER/.vector_cache .vector_cache
mkdir -p data/rcv1
cd data/rcv1
wget -O train.txt.bz2 \
https://www.csie.ntu.edu.tw/~cjlin/\
libsvmtools/datasets/multilabel/\
rcv1_topics_train.txt.bz2
bzip2 -d *.bz2
