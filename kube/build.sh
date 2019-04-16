#!/bin/bash

OUTPUT="$(pwd)/model_output"
PATH_TO_INITIAL_CHECKPOINT="${OUTPUT}/checkpoint"
PATH_TO_TRAIN_DIR="${OUTPUT}/logs"

mkdir -p ${PATH_TO_INITIAL_CHECKPOINT}
mkdir -p ${PATH_TO_TRAIN_DIR}

python prism_dl/train.py \
    --logtostderr \
    --training_number_of_steps=150000 \
    --train_split="train" \
    --model_variant="xception_65" \
    --atrous_rates=6 \
    --atrous_rates=12 \

 
