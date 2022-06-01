#!/bin/sh

set -euC

cd ~/Downloads

#tmux kill-ses -t giang

echo "Creating the new tmux session ..."
tmux new-session -d -s giang\; \
        send-keys 'conda activate kNN' C-m \; \
        send-keys 'jupyter notebook --no-browser --port=8887' C-m \; \
        split-window -v \; \
        send-keys 'conda activate kNN' C-m \; \
        split-window -h \; \
        send-keys 'conda activate kNN' C-m \; \
        select-pane -t 1 \; \
        split-window -h \; \
        send-keys 'conda activate kNN' C-m \; \
        select-pane -t 1 \; \
        split-window -v \; \
        send-keys 'conda activate kNN' C-m \; \
        send-keys 'nvidia-smi -l 5' C-m \; \


tmux attach -t giang
