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

As you may know, two sets are linearly separable if and only if their convex hull has no intersection. We can apply the [convex hull algorithm](https://en.wikipedia.org/wiki/Convex_hull_algorithms) to check whether this condition is true or not; another approach is to use the linear SVM to see if the corresponding error vanishes.

## Classifier
We composite the sign function with the linear regression model to get 

$$ 
\begin{align} 
h(x_i) = \text{sign}(\mathbf{w}^{T}x_i + b)
\end{align}
$$ 
where b is the bias term (intuitively the y-intercept in 2-D). Dealing with b can be a pain, so we 'absorb' it into the feature vector $$\mathbf{w}$$ by adding one additional constant dimension. Under this convention,

$$
\begin{align*}
\mathbf{x}_i \hspace{0.1in} \text{becomes} \hspace{0.1in} \begin{bmatrix} \mathbf{x}_i \\ 1  \end{bmatrix} \\
\mathbf{w} \hspace{0.1in} \text{becomes} \hspace{0.1in} \begin{bmatrix} \mathbf{w} \\ b  \end{bmatrix} \\ 
\end{align*}
$$

with these new notations, we simplify as

$$
\begin{align}
h(\mathbf{x}_i) = \textrm{sign}(\mathbf{w}^\top \mathbf{x})
\end{align}
$$
