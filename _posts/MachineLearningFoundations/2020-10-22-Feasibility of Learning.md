---
layout: "post"
title: "MLF 3: Feasibility of Learning"
date: "2020-10-22"
tags:
 - MachineLearning
 - DataScience
---

Given a training dataset $$\mathcal{D}$$ out of a larger population data and suppose our goal is to learn a "noisy" target function $$f$$ on the popultation from the training data. In supervised learning, we usually take the following strategy:
* Pick some class of functions $$f(x)$$ (decision trees, linear functions, etc.)
* Pick some loss function, measuring how we would like $$f(x)$$ to perform on test data.
* Fit $$f(x)$$ so that it has a good average loss on training data. (Perhaps using cross-
validation to regularize.)

What is missing here is a proof that the performance on training data is indicative of performance on test data. Does the data set $$\mathcal{D}$$ tell us anything outside of $$\mathcal{D}$$ that we didn't know
before? We intuitively know that the more “powerful” the class of functions is, the more training data we will tend to need, but we have not made the definition of “powerful”, nor this relationship precise.

In this note, we will study two of the most basic ways of characterizing the “power” of a set of functions.

Let us consider the following example: suppose we want to learn a Boolean target function over a three-dimensional input space $$X = \{0, 1\}^3$$，while the training dataset $$\mathcal{D}$$ contains 5 out of all 8 possible outputs. 

![img](/assets/img/5b556fd8bc76d.png)

Therefore，there exist 8 possible candidate hypothesis for $$f$$, which all classify the 5 training data correctly, but on the remaining 3 test data，their performance differ greatly. How do we know which hypothesis to learn given one of them is the target function, and remember that it is the hypothesis' performance on the test data that we care. 

## No Free Lunch Theorem


The NFLT states that under the following conditions:

* The search space the optimiser iterates through will be finite;
* The space of possible cost values will also be finite;

any one algorithm that searches for an optimal cost or fitness solution is not universally superior to any other algorithm. 


## Probability to Rescue

The key observation here is that, we will want our observations be **random**, which will allow us to believe that our observations are representative of the larger population. 

### Hoeffding’s inequality:

Suppose that $$X_1,...,X_n$$ are random independent identically distributed random variables satisfying that $$0 \leq X_i \leq 1$$ and $$\mathbb{E}[X] = \mu$$. Then for any $$\epsilon >0$$,

$$
\begin{align}
\mathbb{P}(\lVert \frac{1}{n} \sum X_i − \mu \rVert \geq \epsilon) \leq 2 \text{exp}\big( - {2n \epsilon^2}\big)
\end{align}
$$

where $$\mathbb{P}(\cdot)$$ denotes the probability of an event.

The intuition for this result is very simple. We have a bunch of variables $$Z_i$$. We know that
when we average a bunch of them up, we should usually get something close to the expected
value. Hoeffding quantifies “usually” and “close” for us.

The following examples compare Hoeffding’s inequality to the true probability of deviating from the mean by more than for binomial distributed variables, with $$E[Z] = \mu $$. For $$\mu = 1/2$$ the bound is not bad. However, for $$\mu = 1/10$$ it is not good at all. What is happening is that
Hoeffding’s inequality does not make use of any properties of the distribution, such as its
mean or variance. In a way, this is great, since we can calculate it just from n and $$\epsilon$$. The
price we pay for this generality is that some distributions will converge to their means much faster than Hoeffding is capable of knowing.

![img](/assets/img/Screen Shot 2020-10-23 at 10.35.36 PM.png)

Another form of Hoeffding’s inequality of the following.

Let $$\delta = 2 \text{exp}(-2n\epsilon^2)$$ and suppose we choose 

$$
\begin{align}
n \geq \frac{1}{2\epsilon^2} \text{log}\frac{2}{\delta}
\end{align}
$$

Then, with probability at least $$1-\delta$$, the difference between the empirical mean $$ \frac{1}{n} \sum Z_i $$ and the true mean $$\mathbb{E}[Z]$$ is at most $$\epsilon$$.

When applied to the important special case of identically distributed Bernoulli random variables $$X_i$$ with sample mean $$\nu$$, the above inequality specialize to

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


## Relation to Learning Theory
