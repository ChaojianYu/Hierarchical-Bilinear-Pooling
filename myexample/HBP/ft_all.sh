#!/bin/bash

# first fine all layers

./build/tools/caffe train \
	-model "myexample/HBP/ft_all.prototxt" \
	-solver "myexample/HBP/ft_all.solver" \
	-weights "myexample/HBP/snapshot/ft_last_layer_iter_60000.caffemodel" \
	-gpu 0
	