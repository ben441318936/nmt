#!/bin/bash

python -m nmt.nmt --src=trace --tgt=label --vocab_prefix=./nmt/temp/binary_seq_vocab/vocab --train_prefix=./nmt/temp/data20_2t_large/data0.1/full_seq/train --dev_prefix=./nmt/temp/data20_2t_large/data0.1/full_seq/val --test_prefix=./nmt/temp/data20_2t_large/data0.1/full_seq/test --out_dir=./nmt/temp/model20_2encoder_avg_large/model0.1 --num_train_steps=40000 --steps_per_stats=100 --num_layers=2 --num_units=128 --dropout=0.2 --metrics=edit_distance --share_vocab=True --encoder_type=uni --steps_per_external_eval=500 --optimizer=adam --learning_rate=0.0001 --src_max_len=30 --tgt_max_len=30 --src_max_len_infer=30 --tgt_max_len_infer=30 --num_traces=2 --NEncoderMode=avg

python -m nmt.nmt --src=trace --tgt=label --vocab_prefix=./nmt/temp/binary_seq_vocab/vocab --train_prefix=./nmt/temp/data20_2t_large/data0.2/full_seq/train --dev_prefix=./nmt/temp/data20_2t_large/data0.2/full_seq/val --test_prefix=./nmt/temp/data20_2t_large/data0.2/full_seq/test --out_dir=./nmt/temp/model20_2encoder_avg_large/model0.2 --num_train_steps=40000 --steps_per_stats=100 --num_layers=2 --num_units=128 --dropout=0.2 --metrics=edit_distance --share_vocab=True --encoder_type=uni --steps_per_external_eval=500 --optimizer=adam --learning_rate=0.0001 --src_max_len=30 --tgt_max_len=30 --src_max_len_infer=30 --tgt_max_len_infer=30 --num_traces=2 --NEncoderMode=avg
