### 1. After preprocessing raw dataset(json format) with ***process_data.ipynb*** -> we can get a preprocessed dataset. 
preprocessed dataset link: 
<https://github.com/2024-2-DeepLearning2-NLP/Preprocessed_Datasets>


### 2. When we run ***main_"dataset_name".sh***, we can train our models( bart-base, baseline, t5-small)
for example, this is a shell script for training bart-base model with dialoguesum data
```
PYTHONPATH=.. accelerate launch /home/gaya/group1/OLDS/src/main.py \
    -do_process_train True \
    -seed 1 \
    -model facebook/bart-base \
    -log_file logs/dialogsum_omission_bart_base.log \
    -output_dir models/dialogsum_omission_bart_base \
    -dataset data/dialsumm/dialsumm \
    -max_source_length 512 \
    -max_target_length 150 \
    -per_device_train_batch_size 8 \
    -per_device_eval_batch_size 4 \
    -learning_rate 5e-5 \
    -num_train_epochs 5 \
    -weight_decay 0.1 \
    -num_warmup_steps 0 \
    -gradient_accumulation_steps 8 \
    -val_max_target_length 150 \
    -val_min_target_length 1 \
    -num_beams 5 \
    -save_path data/dialogsum_omission/bart_base \
    -preprocessing_num_workers 64 \
    -result_dir results/dialogsum
```
this is also explained on our Notebook file ***Group1_full_training.ipynb***

### 3. when we run ***process.sh***, we group our omission data and build omission labels
this process doesn't make any log files.

and the brief process of this shell script is as below. 

```
# when we run
PYTHONPATH=. python /home/gaya/group1/OLDS/src/main.py -do_process True -dataset data/qmsum -save_path data/qmsum_omission -preprocessing_num_workers 32


```


