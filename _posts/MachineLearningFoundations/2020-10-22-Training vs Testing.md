---
layout: "post"
title: "MLF 4: Training vs Testing"
date: "2020-10-22"
tags:
 - MachineLearning
 - DataScience
---

Because of the NFL (No Free Lunch) Theorem, it seems that machine learning is doomed to fail. With the introduction of statistical tools, we learned that when the random sample size is large enough and the number of hypothesis is reasonably small, then machine learning is viable. In this part, we will rigorously disucss the core problem of when can a machine learn.

## Preview and Recap

Let us look at the following flow chart of supervised learning:

![flow](/assets/img/learning_flow.png) 

In the above "statistical" learning flow, we need that the training dataset and the test dataset all obey the same population distribution, this is the fundamental reason why machine can learn. Also, we require that the training dataset is relatively large and the number of hypothesis is reasonably bounded. Therefore, according to the Hoeffding inequality, we can show that our algorithm can be generalized well. With good training, we can therefore get our final model $$ g \approx f$$,  the latter being our noisy target.


## Generalization Error
We have discussed how the value of $$E_{in}$$ does not always generalize to a similar value of $$E_{out}$$. Generalization is a key
issue in learning. One can define the generalization error as the discrepancy between $$E_{in}$$ and $$E_{out}$$· By the Hoeffding Inequality as discussed before, we can characterize the generalization error with a probabilistic bound,

$$
\begin{align}
\mathbb{P}[\lvert E_{in}(g) - E_{out}(g) \rvert > \epsilon] \leq 2 |\mathcal{H}| e^{-2n\epsilon^2}
\end{align}
$$

## Effective Number of Hypotheses
