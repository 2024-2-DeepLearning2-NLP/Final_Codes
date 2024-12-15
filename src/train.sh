# qmsum pair train (bert-base)
PYTHONPATH=.. accelerate launch /home/gaya/group1/OLDS/src/main.py \
    -do_train True \
    -model bert-base-uncased \
    -log_file logs/qmsum.bert_base.pair.train.log \
    -output_dir models/qmsum_bert_base_pair \
    -dataset /home/gaya/group1/OLDS/data/qmsum_omission/omission.save \
    -max_source_length 512 \
    -per_device_train_batch_size 64 \
    -per_device_eval_batch_size 16 \
    -learning_rate 5e-5 \
    -num_train_epochs 3 \
    -weight_decay 0.01 \
    -num_warmup_steps 0 \
    -gradient_accumulation_steps 1 \
    -preprocessing_num_workers 16 \
    -mode pair
# ------------------------------------------------------------------
# -> 계속 에러 남 / 12. 05. qmsum으로 재시도. 
# -------------------------------------------------------------------

# tweetsum seq train -> 1 epoch training 대충 3분 내외 뜸 
PYTHONPATH=.. accelerate launch /home/gaya/group1/OLDS/src/main.py \
    -do_train True \
    -model bert-base-uncased \
    -log_file logs/tweetsum.bert_base.seq.train.log \
    -output_dir models/tweetsum_bert_base_seq \
    -dataset /home/gaya/group1/OLDS/data/tweetsumm_omission/omission.save \
    -max_source_length 512 \
    -per_device_train_batch_size 16 \
    -per_device_eval_batch_size 32 \
    -learning_rate 5e-5 \
    -num_train_epochs 1 \
    -weight_decay 0.01 \
    -num_warmup_steps 0 \
    -gradient_accumulation_steps 1 \
    -preprocessing_num_workers 128 \
    -mode seq

# qmsum seq train
PYTHONPATH=.. accelerate launch /home/gaya/group1/OLDS/src/main.py \
    -do_train True \
    -model bert-base-uncased \
    -log_file logs/qmsum.bert_base.seq.train.log \
    -output_dir models/qmsum_bert_base_seq \
    -dataset /home/gaya/group1/OLDS/data/qmsum_omission/omission.save \
    -max_source_length 512 \
    -per_device_train_batch_size 8 \
    -per_device_eval_batch_size 16 \
    -learning_rate 5e-5 \
    -num_train_epochs 1 \
    -weight_decay 0.01 \
    -num_warmup_steps 0 \
    -gradient_accumulation_steps 1 \
    -preprocessing_num_workers 128 \
    -mode seq




# -------------------------------------------------------------------------
# 얘도 qmsum으로 재시도 12. 05. 
# -------------------------------------------------------------------------


# samsum span train (qm_span_bert_train 함. 12.05 오후 8:51)
PYTHONPATH=.. accelerate launch /home/gaya/group1/OLDS/src/main.py \
    -do_train True \
    -model bert-base-uncased \
    -log_file logs/qmsum.bert_base.span.train.log \
    -output_dir models/qmsum_bert_base_span \
    -dataset /home/gaya/group1/OLDS/data/qmsum_omission/omission.save \
    -max_source_length 512 \
    -per_device_train_batch_size 2 \
    -per_device_eval_batch_size 4 \
    -learning_rate 5e-5 \
    -num_train_epochs 5 \
    -weight_decay 0.01 \
    -num_warmup_steps 500 \
    -gradient_accumulation_steps 1 \
    -preprocessing_num_workers 16 \
    -mode span

# samsum pair train
PYTHONPATH=.. accelerate launch  /home/gaya/group1/OLDS/src/main.py \
    -do_train True \
    -model roberta-base \
    -log_file logs/qmsum.roberta_base.pair.train.log \
    -output_dir models/qmsum_roberta_base_pair \
    -dataset  /home/gaya/group1/OLDS/data/qmsum_omission/omission.save \
    -max_source_length 512 \
    -per_device_train_batch_size 32 \
    -per_device_eval_batch_size 8 \
    -learning_rate 5e-5 \
    -num_train_epochs 3 \
    -weight_decay 0.01 \
    -num_warmup_steps 0 \
    -gradient_accumulation_steps 1 \
    -preprocessing_num_workers 16 \
    -mode pair

# samsum seq train # 
PYTHONPATH=.. accelerate launch /home/gaya/group1/OLDS/src/main.py \
    -do_train True \
    -model roberta-base \
    -log_file logs/qmsum.roberta_base.seq.train.log \
    -output_dir models/qmsum_roberta_base_seq \
    -dataset   /home/gaya/group1/OLDS/data/qmsum_omission/omission.save  \
    -max_source_length 512 \
    -per_device_train_batch_size 4 \
    -per_device_eval_batch_size 4 \
    -learning_rate 5e-5 \
    -num_train_epochs 3 \
    -weight_decay 0.01 \
    -num_warmup_steps 0 \
    -gradient_accumulation_steps 1 \
    -preprocessing_num_workers 32 \
    -mode seq

# samsum span train
PYTHONPATH=.. accelerate launch  /home/gaya/group1/OLDS/src/main.py \
    -do_train True \
    -model roberta-base \
    -log_file logs/qmsum.roberta_base.span.train.log \
    -output_dir models/qmsum_roberta_base_span \
    -dataset /home/gaya/group1/OLDS/data/qmsum_omission/omission.save \
    -max_source_length 512 \
    -per_device_train_batch_size 2 \
    -per_device_eval_batch_size 4 \
    -learning_rate 5e-5 \
    -num_train_epochs 5 \
    -weight_decay 0.01 \
    -num_warmup_steps 500 \
    -gradient_accumulation_steps 1 \
    -preprocessing_num_workers 16 \
    -mode span
