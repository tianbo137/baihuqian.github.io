---
layout: "post"
title: "MLF 3: Feasibility of Learning"
date: "2020-10-22"
tags:
 - MachineLearning
 - DataScience
---

Given a training dataset $$\mathcal{D}$$, and we are trying to learn a "noisy" target function $$f$$. we
know the value of $$f$$ on all the points in $$\mathcal{D}$$. Does the data set $$\mathcal{D}$$ tell us anything outside of $$\mathcal{D}$$ that we didn't know
before? If the answer is yes, then we have learned something. If the answer is
no, we can conclude that learning is not feasible.

Let us consider the following example: we want to learn a Boolean target function over a three-dimensional input space $$X = \{0, 1\}^3$$，while the training dataset $$\mathcal{D}$$ contains 5 out of all 8 possible outputs. Therefore， there exist 8 possible candidate hypothesis for $$f$$, which ，对5个训练样本的分类效果效果都完全正确。但是在另外3个测试数据上，不同的hypothesis表现有好有坏。在已知数据D上，g≈fg\approx fg≈f；但是在D以外的未知数据上，g≈fg\approx fg≈f不一定成立。而机器学习目的，恰恰是希望我们选择的模型能在未知数据上的预测与真实结果是一致的，而不是在已知的数据集D上寻求最佳效果。

## No Free Lunch Theorem

The average performance of any pair of algorithms across all possible problems is identical.

## Hoeffding’s inequality:

Suppose that $$X_1,...,X_n$$ are independent random variable satisfying that $$a_i \leq X_i \leq b_i$$ and $$\mathbb{E}[X_i] = \mu$$. Then for any $$t >0$$,

$$
\begin{align}
\mathbb{P}(\|X − \mu \∣\geq t) \leq 2 \text{exp}\big( - \frac{2n^2 t^2}{\sum (b_i - a_i)^2}\big)
\end{align}
$$
