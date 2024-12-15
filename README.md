There are also Readme files in each folder.

# Final Codes
This is our final codes for **"Towards Understanding Omission in Dialogue Summarization"**

We didn't include dataset in this repository

(I separated them because they might not fit into a single repository due to the size.)

→ preprocessed_dataset repository: <https://github.com/2024-2-DeepLearning2-NLP/Preprocessed_Datasets>





## in process
#### 1. process_data.ipynb process json raw data into dataset format 
![image](https://github.com/user-attachments/assets/badf72d0-f0aa-46c0-84af-a3fd4ee18b4a)


#### 2. main_"dataset".sh →→ we train our model and build omission dataset.
![image](https://github.com/user-attachments/assets/12bad884-942c-4a62-ac62-70062b8d2f66)

#### 3. process.sh →→ we group omission datasets built at step 1, and build omission labels 
![image](https://github.com/user-attachments/assets/1f2878e8-75dc-4bdd-8878-ebf9fdc0dd3a)

#### 4. We get the final Omisssion Datasets. 
omission dataset link: 


## in src
#### 5. We do the omission detection task by running ***train.sh*** with the dataset we obtained 
![image](https://github.com/user-attachments/assets/5f6783a6-00b9-42fd-9b95-ae4659512cd3)

#### 6. We do the post_edit by running ***post_edit_train.sh***. 
![image](https://github.com/user-attachments/assets/f4224db5-c9ea-44b1-b447-d94503b7d562)
we were not able to do the full post edit process since the GPU server was super slow, and finally couldn’t connect to the GPU server in the end.


