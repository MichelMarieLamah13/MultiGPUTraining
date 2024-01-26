#!/bin/bash
#SBATCH --job-name=mgpu_1
#SBATCH --partition=gpu
#SBATCH --gres=gpu:3
#SBATCH --constraint=GPURAM_Max_12GB
#SBATCH --time=7-00:00:00
#SBATCH --mem=16GB
#SBATCH --cpus-per-task=8
#SBATCH --output=%x_output.log
#SBATCH --error=%x_error.log


source /etc/profile.d/conda.sh
conda activate ecapa_tdnn

python3 data_parallel.py

conda deactivate