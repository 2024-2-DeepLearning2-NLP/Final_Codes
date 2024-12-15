## in src
### main.py shows the overall working process
```
def main():
    args = parse_args()
    # Initialize the accelerator. We will let the accelerator handle device placement for us in this example.
    accelerator = Accelerator()

    # Initialize the logger
    logger = get_logger(args.log_file, accelerator)

    # If passed along, set the training seed now.
    if args.seed is not None:
        set_seed(args.seed)
        random.seed(args.seed)

    if args.do_train:
        train(args, logger, accelerator)
    if args.do_test:
        test_all(args, logger, accelerator)
    if args.do_predict:
        predict_all(args, logger, accelerator)
    if args.do_process_train:
        build_omission_data(args, logger, accelerator)
    if args.do_process:
        group_omission_data(args)
        sleep(10)
        build_omission_label(args)
    if args.do_edit_train:
        post_edit_train(args, logger, accelerator)
    if args.do_edit_test:
        post_edit_evaluate(args, logger, accelerator)
```







#### Do the omission detection task by running ***train.sh*** with the dataset we obtained 
![image](https://github.com/user-attachments/assets/5f6783a6-00b9-42fd-9b95-ae4659512cd3)

#### Do the post_edit by running ***post_edit_train.sh***. 
![image](https://github.com/user-attachments/assets/f574dc92-ebc9-4c39-9482-6f8a04a21170)

we were not able to do the full post edit process since the GPU server was super slow, and finally couldn’t even connect to the GPU server in the end.


