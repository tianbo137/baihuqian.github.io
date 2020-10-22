---
layout: "post"
title: "MLF 3: Feasibility of Learning"
date: "2020-10-22"
tags:
 - MachineLearning
 - DataScience
---

## No Free Lunch Theorem

The average performance of any pair of algorithms across all possible problems is identical.

## Hoeffding’s inequality:

Suppose that $$X_1,...,X_n$$ are independent and that, $$a_i \leq X_i \leq b_i$$,and $$\mathbb{E}[X_i] = \mu$$. Then for any $$t >0$$,

$$
\begin{align}
\mathbb{P}(\|X − \mu\∣\geq t) \leq 2 exp\big( - \frac{2n^2 t^2}{\sum (b_i - a_i)^2}\big)
\end{align}
$$
