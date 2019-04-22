#!/bin/bash
# file: run_bert.sh
datadir=./data2
modeldir=./multi_cased_L-12_H-768_A-12
outputdir=./bert_output2

if [ -d "$outputdir" ]; then
  # Control will enter here if $DIRECTORY exists.
  rsync -a $outputdir $outputdir_bak
  rm -rf $outputdir
  #recreate the directories
  #mkdir -p $predictdir
else
  mkdir -p $outputdir
fi


python run_classifier.py \
	--task_name=umtqe \
	--do_train=true \
	--do_eval=true \
	--do_predict=true \
	--data_dir=$datadir \
	--vocab_file=$modeldir/vocab.txt \
	--bert_config_file=$modeldir/bert_config.json \
	--init_checkpoint=$modeldir/bert_model.ckpt \
	--max_seq_length=80 \
	--train_batch_size=8 \
	--learning_rate=0.00002 \
	--num_train_epochs=3.0 \
	--output_dir=$outputdir\
	--do_lower_case=False
