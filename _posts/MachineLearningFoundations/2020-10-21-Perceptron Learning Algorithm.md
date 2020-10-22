---
layout: "post"
title: "MLF 2: Perceptron Learning Algorithm"
date: "2020-10-21"
tags:
 - MachineLearning
 - DataScience
---
The perceptron is a  **linear (binary) classifier** on the training dataset $$\{x_i, y_i\} $$ where $$y_i$$ takes value in $$ \{-1, +1\}.$$

## Linear Separability Assumption

For the perceptron classifier to work, we need the data set to be linearly separable. As you may know, two sets are linearly separable if and only if their convex hull has no intersection. We can apply the [convex hull algorithm](https://en.wikipedia.org/wiki/Convex_hull_algorithms) to check whether this condition is true or not; another approach is to use the linear SVM to see if the corresponding error vanishes.

Famous example of a simple non-linearly separable data set, the XOR problem is given by (Minsky 1969): 

![perceptron3](/assets/img/perceptron_img4.png)

## Classifier
We composite the sign function with the linear regression model to get 

$$ 
\begin{align} 
h(x_i) = \text{sign}(\mathbf{w}^{T}x_i + b)
\end{align}
$$ 

where b is the **threshold** term (intuitively the y-intercept in 2-D). See the following picture for an intuitive understanding of the perceptron model:

![perceptron_img1](/assets/img/perceptron_img1.png)

As dealing with b can be a pain, we 'absorb' it into the weight vector $$\mathbf{w}$$ by adding one additional constant dimension. Under this convention,

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

Geometrically speaking, any hyperplane given by the weight vector $$\mathbf{w}$$ is an eligible perceptron and therefore there are **infinitely** many possible choices. How dow we choose one based on the training data set $$\{(x_i, y_i)\}$$. A key obervation is that 

$$
\begin{align}
y_i(\mathbf{w}^\top \mathbf{x}_i) > 0 \Longleftrightarrow \mathbf{x}_i \hspace{0.1in} \text{is classified correctly}
\end{align}
$$

where 'classified correctly' means that $$x_i$$ is on the correct side of the hyperplane defined by the weight vector $$\mathbf{w}$$. Also, note that the left side depends on $$y_i \in \{−1,+1\}$$ (it wouldn't work for $$yi \in \{0,+1\}$$). 

## Perceptron Algorithm
Now that we know what the w is supposed to do (defining a hyperplane the separates the data), let's look at how we can get such w:

![perceptron_img](/assets/img/perceptron_algo.png)

Intuitively, we have

![perceptron_img](/assets/img/PerceptronUpdate.png)

(Left:) The hyperplane defined by $$\mathbf{w}_t$$ misclassifies one red (-1) and one blue (+1) point. (Middle:) The red point x is chosen and used for an update. Because its label is -1 we need to subtract x from $$\mathbf{w}_t$$. (Right:) The udpated hyperplane $$\mathbf{w}_{t+1}$$ = $$\mathbf{w}_t$$ − $$\mathbf{x}$$ separates the two classes and the Perceptron algorithm has converged.

## Convergence of the Perceptron Algorithm (when linear separability condition is true)
We refer the interested reader to the rigourous [proof](/assets/pdf/perceptron_convergence_theorem.pdf) of the convergence theorem.

## More About PLA
* Pro: simple to implement, fast, works in any dimension.
* Con: linear separable unknown a priori, halting time unknown which depends on the how "separated" the training data is.
* If the data set is not linear separable and if we relax the condition to find a line which minimize the number of mistakes defined below:

$$ 
\begin{align}
 #\{ y_i \neq sign(\mathbf{w}^T\mathbf{x_i})\}
\end{\align}
$$

This problem is **NP-hard** to solve, unfortunately.
