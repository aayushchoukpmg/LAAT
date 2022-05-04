#!/bin/sh
python3 -m src.run \
    --problem_name endoscopy_icd_30 \
    --max_seq_length 4000 \
    --n_epoch 50 \
    --patience 5 \
    --batch_size 8 \
    --optimiser adamw \
    --lr 0.001 \
    --dropout 0.3 \
    --level_projection_size 128 \
    --main_metric micro_f1 \
    --mode static \
    --embedding_mode word2vec \
    --embedding_file data/embeddings/word2vec_sg0_100.model \
    --attention_mode label \
    --joint_mode hierarchical \
    --d_a 512 \
    CNN 

