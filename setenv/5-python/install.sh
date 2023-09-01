#!/bin/bash

bash create-condaenv.sh tabby 3.10 requirements-tabby.txt && \
    source "$(dirname "$(which conda)")/../etc/"profile.d/conda.sh && \
    conda activate tabby && \
    conda install -y -c conda-forge rust && \
    pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118 && \
    conda deactivate

