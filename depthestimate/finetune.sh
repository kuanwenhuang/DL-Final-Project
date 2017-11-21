#/bin/bash
DATAFILE=$1
DUMPFILE=$2
PKLFILE=$3
BN0=$4
RATE=$6
PKLFILE2="${PKLFILE}/twobranch_nn.pkl"  

#xvfb-run -a python nn.py data=$DATAFILE dump=$DUMPFILE pkl=../demo/twobranch_v2.pkl bno=$4 finetune
for number in `seq 1 $5`; 
do
value=`echo $6 | sed -e 's/[eE]+*/\\*10\\^/'`
learning_rate=`echo "$value/$number" | bc -l`
#xvfb-run -a python nn.py model=$DUMPFILE dump=$PKLFILE exportpkl
#xvfb-run -a python nn.py data=$DATAFILE dump=$DUMPFILE pkl=$PKLFILE2 bno=$4 finetune
done
