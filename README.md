# BERT-QE
Using BERT  model to fine tune for quality estimation 
# Usage:
step 1: Download pretrained [Multilingual Bert model](https://storage.googleapis.com/bert_models/2018_11_23/multi_cased_L-12_H-768_A-12.zip)

step 2: Preprocess your data (see examples in data) to  the format and name of train.tsv, dev.tsv, test.tsv using bert.ipynb

step 3: ./run_bert.sh

step 4:  using bert.ipynb (which reads the output test_resuts.csv and compute p, r, f1 scores) again to generate experiment reports.
