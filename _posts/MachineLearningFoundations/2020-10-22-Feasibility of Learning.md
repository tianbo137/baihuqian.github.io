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

The key observation here is that, we will want our observations be **random**, which will allow us to believe that our observations are representative of the larger population. 

### Hoeffding’s inequality:

Suppose that $$X_1,...,X_n$$ are independent bounded random variables satisfying that $$a_i \leq X_i \leq b_i$$ and $$\mathbb{E}[X_i] = \mu$$. Then for any $$\epsilon >0$$,

$$
\begin{align}
\mathbb{P}(\lVert X − \mu \rVert \geq \epsilon) \leq 2 \text{exp}\big( - \frac{2n^2 \epsilon^2}{\sum (b_i - a_i)^2}\big)
\end{align}
$$

Here, $$\mathbb{P}(\cdot)$$ denotes the probability of an event. In the special case of $X_i$ obeys the Bournoulli distribution with sample mean $$\nu$$, the above inequality specialize to

$$
\begin{align}
\mathbb{P}(\lVert \nu − \mu \rVert \geq \epsilon) \leq 2 \text{exp}\big( -{2n \epsilon^2}\big)
\end{align}
$$

which says that as the sample size n grows, it becomes exponentially unlikely that v will deviate from $$\mu$$ by more than our 'tolerance' $$\epsilon$$. The proof of the Hoeffding theorem can be found [here](/assets/pdf/hoeffding.pdf), and it provides us with the following understanding of the feasibility of learning: let $$g$$ be a hypothesis approximating our target $$f$$, and let $$ E_{in}(g) $$ and $$E_{out}(g)$$ denote the error made by $$g$$ for the training data and test data respectively. What Hoeffding theorem is saying is that we can **almost surely approximately** make $$ E_{in}(g) $$ sufficiently close to $$E_{out}(g)$$, which makes learning feasibile. The remaining question is **if we can make $$E_{in}(g)$$ small**, which will be answered by the various learning algorithms to be introduced.

### Complexity of the space of all hypothesis $$\mathcal{H}$$

If the size of hypotheses set $$\mathcal{H}$$, denoted by m, goes up, we run more risk that $$E_{in}(g)$$ will be a poor estimator of $$E_{out}(g)$$ according to the Hoeffding inequality. Thus the m can be thought of as a measure of the 'complexity' of $$\mathcal{H}$$. If we want an affirmative answer to the first
question, we need to keep m in check. However, if we want
an affirmative answer to the second question, we stand a better chance if $$\mathcal{H}$$
is more complex, since g has to come from $$\mathcal{H}$$. So, a more complex $$\mathcal{H}$$ gives us
more flexibility in finding some g that fits the data well, leading to small $$E_{in}(g)$$. This tradeoff in the complexity of $$\mathcal{H}$$ is a major theme in learning theory.
