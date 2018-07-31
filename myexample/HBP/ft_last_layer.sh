#!/bin/bash

# first fine tune the last layer only

./build/tools/caffe train \
	-model "myexample/HBP/ft_last_layer.prototxt" \
	-solver "myexample/HBP/ft_last_layer.solver" \
	-weights "myexample/data/VGG_ILSVRC_16_layers.caffemodel" \
	-gpu 0
	