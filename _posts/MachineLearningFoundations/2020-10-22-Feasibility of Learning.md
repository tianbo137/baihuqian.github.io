---
layout: "post"
title: "MLF 3: Feasibility of Learning"
date: "2020-10-22"
tags:
 - MachineLearning
 - DataScience
---

Given a training dataset $$\mathcal{D}$$ and our goal is to learn a "noisy" target function $$f$$. we
know the value of $$f$$ on all the points in $$\mathcal{D}$$. Does the data set $$\mathcal{D}$$ tell us anything outside of $$\mathcal{D}$$ that we didn't know
before? If the answer is yes, then we have learned something. If the answer is no, we can conclude that learning is not feasible.

Let us consider the following example: we want to learn a Boolean target function over a three-dimensional input space $$X = \{0, 1\}^3$$，while the training dataset $$\mathcal{D}$$ contains 5 out of all 8 possible outputs. 

![img](/assets/img/5b556fd8bc76d.png)

Therefore， there exist 8 possible candidate hypothesis for $$f$$, which all classify the 5 training data correctly, but on the remaining 3 test data，their performance differ greatly. How do we know which hypothesis to learn, after all it is the hypothesis' performance on the test data that we care. 

## No Free Lunch Theorem

The average performance of any pair of algorithms across all possible problems is identical.

## Probability to Rescue

## Hoeffding’s inequality:

Suppose that $$X_1,...,X_n$$ are independent random variables satisfying that $$a_i \leq X_i \leq b_i$$ and $$\mathbb{E}[X_i] = \mu$$. Then for any $$t >0$$,

$$
\begin{align}
\mathbb{P}(\|X − \mu \∣\geq t) \leq 2 \text{exp}\big( - \frac{2n^2 t^2}{\sum (b_i - a_i)^2}\big)
\end{align}
$$
