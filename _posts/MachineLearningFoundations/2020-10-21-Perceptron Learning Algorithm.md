---
layout: "post"
title: "MLF 2: Perceptron Learning Algorithm"
date: "2020-10-21"
tags:
 - MachineLearning
 - DataScience
---

## Assumptions
* Binary classification (i.e. $$y_i \in \{-1, +1\}$$)
* Data is linearly separable

As you may know, two sets are linearly separable if and only if their convex hull has no intersection. We can apply the convex hull algorithm to check whether this condition is true or not. Another approach is to use linear SVM to see if it has 0% error.

## Classifier
We apply the sign function to the linear regression model and get $$ h(x_i) = \text{sign}(\mathbf{w}^{T}x_i + \mathbf{b}).$$ 

![See the following picture](https://github.com/tianbo137/tianbo137.github.io/blob/master/photos/perceptron_img1.png)

b is the bias term (without the bias term, the hyperplane that w defines would always have to go through the origin). Dealing with b can be a pain, so we 'absorb' it into the feature vector w by adding one additional constant dimension. Under this convention, 
$$\mathbf{x}_i \hspace{0.1in} \text{becomes} \hspace{0.1in} \begin{bmatrix} \mathbf{x}_i \\ 1  \end{bmatrix} \\
\mathbf{w} \hspace{0.1in} \text{becomes} \hspace{0.1in} \begin{bmatrix} \mathbf{w} \\ b  \end{bmatrix} \\ $$
