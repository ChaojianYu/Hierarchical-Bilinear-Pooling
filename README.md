# Hierarchical Bilinear Pooling for Fine-Grained Visual Recognition

This branch is developed for fine-grained recognition, the related paper is as follows:
    
    Hierarchical Bilinear Pooling for Fine-Grained Visual Recognition[C]
    Chaojian Yu, Xinyi Zhao, Qi Zheng, Peng Zhang, Xinge You*
    European Conference on Computer Vision. 2018.

### Files
- Original Caffe library
- Sum Pooling layer
  * src/caffe/proto/caffe.proto
  * include/caffe/layers/sum_pooling_layer.hpp
  * src/caffe/layers/sum_pooling_layer.cpp
  * src/caffe/layers/sum_pooling_layer.cu
- L2 Normalize layer
  * include/caffe/layers/l2_normalize_layer.hpp
  * src/caffe/layers/l2_normalize_layer.cpp
  * src/caffe/layers/l2_normalize_layer.cu
- Signed Sqrt layer
  * include/caffe/layers/signed_sqrt_layer.hpp
  * src/caffe/layers/signed_sqrt_layer.cpp
  * src/caffe/layers/signed_sqrt_layer.cu
- Example
  * myexample/data/
  * myexample/HBP/ft_last_layer.sh
  * myexample/HBP/ft_last_layer.solver
  * myexample/HBP/ft_last_layer.prototxt
  * myexample/HBP/ft_all.sh
  * myexample/HBP/ft_all.solver
  * myexample/HBP/ft_all.prototxt

### Train model
1. The Installation completely the same as [Caffe](http://caffe.berkeleyvision.org/). Please follow the [installation instructions](http://caffe.berkeleyvision.org/installation.html). Make sure you have correctly installed before using our code. 
2. Download the [CUB dataset](http://www.vision.caltech.edu/visipedia/CUB-200-2011.html) and [VGG16 model](https://gist.github.com/ksimonyan/211839e770f7b538e2d8) for training.
3. Preprocess the CUB dataset and creat list for training set and validation set, place them in myexample/data/
4. Fine tune the last layer

   	   ./myexample/HBP/ft_last_layer.sh
    
5. Fine tune the whole network

       ./myexample/HBP/ft_all.sh

### Fine tuned model
The fine tuned model is available: [google drive](https://drive.google.com/file/d/13J06t4jXz51a55-oca10iDfjKvDqHHTK/view?usp=sharing) [baidu skydrive](https://pan.baidu.com/s/1cOktfFq8-PJWExJyHLI4sg)

### Citation
If you find our code useful, please consider citing our work:

    @article{yu2018hierarchical,
      title={Hierarchical Bilinear Pooling for Fine-Grained Visual Recognition},
      author={Yu, Chaojian and Zhao, Xinyi and Zheng, Qi and Zhang, Peng and You, Xinge},
      journal={arXiv preprint arXiv:1807.09915},
      year={2018}
    }
