---
layout: post
title: "Markov Chain"
date: '2020-11-5'
tags:
 - Statistics
 - Interview
---

## What is Markov Chain?

**Markov chains**, also known as discrete-time Markov chain, get its name after the Russian mathematician Andrey Markov, are mathematical systems that hop from one "state" (a situation or set of values) to another. 

To motivate this discussion, we start with a simple example: consider a stock market with 3 possible states: Bull market, Bear market, and Stagnant market, which will be denoted by 0, 1, 2, respectively. It is possible to transition randomly from any state to another per second according to the following scheme:

![markovmarket](/assets/img/Markov 2.png)

The *state space* for this process is given by $$ \mathcal{S} = \{0, 1, 2\}$$ and we denote by $X_t$ the state of the market at time $$t = 0, 1,2,\ldots$$ which is called the *state* of the process at time $$t$$. 

Let $$p _ {ij}$$ denote the probability of going from position i to position j in one step.  For example, in the above stock market example, Bull market can change to Stagnant market with a possibilty of 0.025, i.e. $$p_{02} = 0.025$$. The numbers $$p_{ij}$$ are called the **one-step transition probabilities** of the process.  Denote by P the **transition matrix** whose entries are the $$p _ {ij}$$, and we have for the stock market example:

![markovmarket](/assets/img/Markov 3.png)


We are interested in the following questions: 

* Starting from state 0, what is the expected time taken to reach state 2? 
* Starting from state 1, what is the probability of being in state 2 at timet? Does the probability converge as $$t \rightarrow \infty$$, and if so, to what?

## Markov Property

    In a Markov chain, the future depends only upon the present, NOT upon the past.
    
The above random walk is a *Markov* in the sense that it is *memoryless* as used 
for the exponential distribution and we can "forget the past":

$$
\begin{align}
P( X _ {t+1} = s _ {t+1} | X _ t = s _ t , X _ {t-1} = s _ {t-1},
\ldots , X _ 0 = s _ 0 ) =
P( X _ {t+1} = s _ {t+1} | X _ t = s _ t )
\end{align}
$$ 

Although this equation has a very complex look, it has a very simple meaning:  The distribution of our next state, given our current state and all our past states, is dependent only on the current state.  It is clear that the stock market  above does have this property; 

## Convergence Property

In typical applications we are interested in the long-run distribution of the process, for example, the long-run proportion of the time that
we are at position 2.  For each state i, define
$$
\begin{align}
{\pi}_i =  \lim_{t \rightarrow \infty} \frac{N_{it}}{t}
\end{align} 
$$
where $$N_{it}$$ is the number of visits the process makes to state i 
among times 1, 2,..., $$t$$.  In most practical cases, this proportion 
will exist and be independent of our initial position $$X_0$$.  (There 
are mathematical conditions under which this is guaranteed to occur, 
but they will not be stated here.)  

Intuitively, the existence of $$\pi_i$$ implies that as t approaches
infinity, the system approaches steady-state, in the sense that
$$
\begin{align}
\lim_{t \rightarrow \infty} P(X_t = i) = \pi_i
\end{align}
$$
Though we will again avoid discussing mathematical conditions for
this to occur, the point here is that this last equation suggests
a way to calculate the values $\pi_i$, as follows.

First note that
$$
\begin{align}
P(X_{t+1} = i) = \sum_k P(X_t = k) p_{ki}
\end{align}
$$
Then as $$t \rightarrow \infty$$ in this equation, intuitively we would have
$$
\begin{align}
\pi_i = \sum_k \pi_k p_{ki}
\end{align}
$$
Letting $$\pi$$ denote the row vector of the elements $$\pi_i$$, these
equations (one for each i) then have the matrix form
$$
\begin{align}
\pi = \pi P
\end{align}
$$
Note that there is also the constraint
$$
\begin{align}
\sum_i \pi_i = 1
\end{align}
$$
This can be used to calculate the $$\pi_i$$.  For the stock market model 
as above, for instance, the solution is $[ \frac{1}{11},
\frac{3}{11},\frac{3}{11},\frac{3}{11},\frac{1}{11} ]$.
Thus in the long run we will spend 1/11 of our time at position 1,
3/11 of our time at position 2, and so on.



## Hitting Times
