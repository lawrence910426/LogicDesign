# Convolution NN (30x30), Accuracy (out sample) = 0.8

Model: "sequential_1"
_________________________________________________________________
 Layer (type)                Output Shape              Param #   
=================================================================
 conv2d_3 (Conv2D)           (None, 28, 28, 8)         224       
                                                                 
 max_pooling2d_3 (MaxPooling  (None, 14, 14, 8)        0         
 2D)                                                             
                                                                 
 conv2d_4 (Conv2D)           (None, 12, 12, 16)        1168      
                                                                 
 max_pooling2d_4 (MaxPooling  (None, 6, 6, 16)         0         
 2D)                                                             
                                                                 
 conv2d_5 (Conv2D)           (None, 4, 4, 64)          9280      
                                                                 
 max_pooling2d_5 (MaxPooling  (None, 2, 2, 64)         0         
 2D)                                                             
                                                                 
 flatten_1 (Flatten)         (None, 256)               0         
                                                                 
 dropout_1 (Dropout)         (None, 256)               0         
                                                                 
 dense_2 (Dense)             (None, 32)                8224      
                                                                 
 dense_3 (Dense)             (None, 3)                 99        
                                                                 
=================================================================
Total params: 18,995
Trainable params: 18,995
Non-trainable params: 0
_________________________________________________________________

# Convolution NN (25x25) Accuracy (out sample) = 0.7

Model: "sequential_1"
_________________________________________________________________
 Layer (type)                Output Shape              Param #   
=================================================================
 conv2d_2 (Conv2D)           (None, 23, 23, 4)         112       
                                                                 
 max_pooling2d_2 (MaxPooling  (None, 11, 11, 4)        0         
 2D)                                                             
                                                                 
 conv2d_3 (Conv2D)           (None, 9, 9, 16)          592       
                                                                 
 max_pooling2d_3 (MaxPooling  (None, 4, 4, 16)         0         
 2D)                                                             
                                                                 
 flatten_1 (Flatten)         (None, 256)               0         
                                                                 
 dropout_1 (Dropout)         (None, 256)               0         
                                                                 
 dense_2 (Dense)             (None, 8)                 2056      
                                                                 
 dense_3 (Dense)             (None, 3)                 27        
                                                                 
=================================================================
Total params: 2,787
Trainable params: 2,787
Non-trainable params: 0
_________________________________________________________________

# Convolution NN (25x25) Accuracy (out sample) = 0.6
Model: "sequential_1"
_________________________________________________________________
 Layer (type)                Output Shape              Param #   
=================================================================
 conv2d_1 (Conv2D)           (None, 21, 21, 8)         608       
                                                                 
 max_pooling2d_1 (MaxPooling  (None, 10, 10, 8)        0         
 2D)                                                             
                                                                 
 flatten_1 (Flatten)         (None, 800)               0         
                                                                 
 dropout_1 (Dropout)         (None, 800)               0         
                                                                 
 dense_2 (Dense)             (None, 8)                 6408      
                                                                 
 dense_3 (Dense)             (None, 3)                 27        
                                                                 
=================================================================
Total params: 7,043
Trainable params: 7,043
Non-trainable params: 0
_________________________________________________________________


# Convolution NN (25x25) Accuracy (out sample) = 0.5
Model: "sequential_2"
_________________________________________________________________
 Layer (type)                Output Shape              Param #   
=================================================================
 conv2d_2 (Conv2D)           (None, 21, 21, 4)         304       
                                                                 
 max_pooling2d_2 (MaxPooling  (None, 10, 10, 4)        0         
 2D)                                                             
                                                                 
 conv2d_3 (Conv2D)           (None, 8, 8, 8)           296       
                                                                 
 max_pooling2d_3 (MaxPooling  (None, 4, 4, 8)          0         
 2D)                                                             
                                                                 
 flatten_2 (Flatten)         (None, 128)               0         
                                                                 
 dropout_2 (Dropout)         (None, 128)               0         
                                                                 
 dense_4 (Dense)             (None, 8)                 1032      
                                                                 
 dense_5 (Dense)             (None, 3)                 27        
                                                                 
=================================================================
Total params: 1,659
Trainable params: 1,659
Non-trainable params: 0
_________________________________________________________________

# Convolution NN (25x25) Accuracy (out sample) = 0.7
Model: "sequential_9"
_________________________________________________________________
 Layer (type)                Output Shape              Param #   
=================================================================
 conv2d_18 (Conv2D)          (None, 24, 24, 8)         104       
                                                                 
 max_pooling2d_18 (MaxPoolin  (None, 12, 12, 8)        0         
 g2D)                                                            
                                                                 
 conv2d_19 (Conv2D)          (None, 11, 11, 32)        1056      
                                                                 
 max_pooling2d_19 (MaxPoolin  (None, 5, 5, 32)         0         
 g2D)                                                            
                                                                 
 flatten_9 (Flatten)         (None, 800)               0         
                                                                 
 dropout_9 (Dropout)         (None, 800)               0         
                                                                 
 dense_18 (Dense)            (None, 8)                 6408      
                                                                 
 dense_19 (Dense)            (None, 3)                 27        
                                                                 
=================================================================
Total params: 7,595
Trainable params: 7,595
Non-trainable params: 0
_________________________________________________________________


# Convolution NN (25x25) Accuracy (out sample) = 0.65 (Could be better)
Model: "sequential_11"
_________________________________________________________________
 Layer (type)                Output Shape              Param #   
=================================================================
 conv2d_22 (Conv2D)          (None, 23, 23, 8)         224       
                                                                 
 max_pooling2d_22 (MaxPoolin  (None, 7, 7, 8)          0         
 g2D)                                                            
                                                                 
 conv2d_23 (Conv2D)          (None, 6, 6, 32)          1056      
                                                                 
 max_pooling2d_23 (MaxPoolin  (None, 3, 3, 32)         0         
 g2D)                                                            
                                                                 
 flatten_11 (Flatten)        (None, 288)               0         
                                                                 
 dropout_11 (Dropout)        (None, 288)               0         
                                                                 
 dense_22 (Dense)            (None, 8)                 2312      
                                                                 
 dense_23 (Dense)            (None, 3)                 27        
                                                                 
=================================================================
Total params: 3,619
Trainable params: 3,619
Non-trainable params: 0
_________________________________________________________________
