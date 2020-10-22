---
layout: "post"
title: "MLF 3: Feasibility of Learning"
date: "2020-10-22"
tags:
 - MachineLearning
 - DataScience
---

Given a training dataset $$\mathcal{D}$$ out of a larger population data and suppose our goal is to learn a "noisy" Boolean target function $$f$$ on the popultation from the training data. So we
know the value of $$f$$ on all the points in $$\mathcal{D}$$. Does the data set $$\mathcal{D}$$ tell us anything outside of $$\mathcal{D}$$ that we didn't know
before? If the answer is yes, then we have learned something. If the answer is no, we can conclude that learning is not feasible.

Let us consider the following example: we want to learn a Boolean target function over a three-dimensional input space $$X = \{0, 1\}^3$$，while the training dataset $$\mathcal{D}$$ contains 5 out of all 8 possible outputs. 

![img](/assets/img/5b556fd8bc76d.png)

Therefore，there exist 8 possible candidate hypothesis for $$f$$, which all classify the 5 training data correctly, but on the remaining 3 test data，their performance differ greatly. How do we know which hypothesis to learn, after all it is the hypothesis' performance on the test data that we care. 

## No Free Lunch Theorem

The average performance of any pair of algorithms across all possible problems is identical.

## Probability to Rescue

### Hoeffding’s inequality:

Suppose that $$X_1,...,X_n$$ are independent bounded random variables satisfying that $$a_i \leq X_i \leq b_i$$ and $$\mathbb{E}[X_i] = \mu$$. Then for any $$\epsilon >0$$,

$$
\begin{align}
\mathbb{P}(\lVert X − \mu \rVert \geq \epsilon) \leq 2 \text{exp}\big( - \frac{2n^2 \epsilon^2}{\sum (b_i - a_i)^2}\big)
\end{align}
$$

Here, $$\mathbb{P}(\cdot)$$ denotes the probability of an event. The [proof] of the Hoeffding theorem can be found [here](/assets/pdf/hoeffding.pdf), and it provides us with the following understanding of the feasibility of learning: let $$g$$ be a hypothesis approximating our target $$f$$, and let $$ E_{in}(g) $$ and $$E_{out}(g)$$ denote the error made by $$g$$ for the training data and test data respectively. What Hoeffding theorem is saying is that we can **almost surely approximately** make $$ E_{in}(g) $$ sufficiently close to $$E_{out}(g)$$, which makes learning feasibile. The remaining question is **if we can make E_{in}(g) small**, which will be answered by the various learning algorithms to be introduced.
