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
$$ h(x_i) = \text{sign}(**w**^{T}x_i + **b**)$$ 

![](https://github.com/tianbo137/tianbo137.github.io/blob/master/photos/perceptron_img1.png)
