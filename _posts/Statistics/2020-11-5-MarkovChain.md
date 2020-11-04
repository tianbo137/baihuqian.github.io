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

for example, Bull market can change to Stagnant market with a possibilty of 0.025. 

The **state space** for this process is given by

$$
\begin{align}
\mathcal{S} = {0, 1, 2}
\end{align}
$$

and we denote by $X_t$ the state of the market at time $$t = 0, 1,2,\ldots$$ which is called the **state** of the process at time $$t$$. 

Let $$p _ {ij}$$ denote the probability of going from position i to position j in one step.  For example, in the above stock market example, $$p_{21} = $$, while $$p_{24} = 0$$. The numbers $$p_{ij}$$ are called the **one-step transition probabilities** of the process.  Denote by P the **transition matrix** whose entries are the $$p _ {ij}$$, and we have for the stock market example:


We are interested in the following questions: 

* Starting from state 1, what is the probability of ever reaching state 5?
* Starting from state 2, what is the expected time taken to reach state 4? 
* Starting from state 2, what is the long-run proportion of time spent instate 3?
* Starting from state 1, what is the probability of being in state 2 at timet? Does the probability converge as $$t \rightarrow \infty$$, and if so, to what?

## Markov Property

    In a Markov chain, the future depends only upon the present, NOT upon the past.
    
The above random walk is a **Markov process**, where the term *Markov* has meaning similar to that of the term *memoryless* used 
for the exponential distribution, in that we can "forget the past":

$$
\begin{align}
P( X _ {t+1} = s _ {t+1} | X _ t = s _ t , X _ {t-1} = s _ {t-1},
\ldots , X _ 0 = s _ 0 ) =
P( X _ {t+1} = s _ {t+1} | X _ t = s _ t )
\end{align}
$$ 

Although this equation has a very complex look, it has a very simple meaning:  The distribution of our next position, given our current position and all our past positions, is dependent only on the current position.  It is clear that the random walk process above  does have this property; for instance, if we are now at position 4, the probability that our next state will be 3 is 1/3---no matter where we were in the past.


## Convergence Property

In typical applications we are interested in the long-run distribution
of the process, for example, the long-run proportion of the time that
we are at position 4.  For each state i, define

\begin{equation}
{\pi}_i =  \lim_{t \rightarrow \infty} \frac{N_{it}}{t}
\end{equation} 

where $N_{it}$ is the number of visits the process makes to state i 
among times 1, 2,..., t.  In most practical cases, this proportion 
will exist and be independent of our initial position $X_0$.  (There 
are mathematical conditions under which this is guaranteed to occur, 
but they will not be stated here.)  

Intuitively, the existence of $\pi_i$ implies that as t approaches
infinity, the system approaches steady-state, in the sense that

\begin{equation}
\lim_{t \rightarrow \infty} P(X_t = i) = \pi_i
\end{equation}

Though we will again avoid discussing mathematical conditions for
this to occur, the point here is that this last equation suggests
a way to calculate the values $\pi_i$, as follows.

First note that

\begin{equation}
P(X_{t+1} = i) = \sum_k P(X_t = k) p_{ki}
\end{equation}

Then as $t \rightarrow \infty$ in this equation, intuitively we would have

\begin{equation}
\pi_i = \sum_k \pi_k p_{ki}
\end{equation}

Letting $\pi$ denote the row vector of the elements $\pi _ i$, these
equations (one for each i) then have the matrix form

\begin{equation}
\pi = \pi P
\end{equation}

Note that there is also the constraint

\begin{equation}
\sum_i \pi_i = 1
\end{equation}

This can be used to calculate the $\pi_i$.  For the random walk 
problem above, for instance, the solution is $[ \frac{1}{11},
\frac{3}{11},\frac{3}{11},\frac{3}{11},\frac{1}{11} ]$.
Thus in the long run we will spend 1/11 of our time at position 1,
3/11 of our time at position 2, and so on.



## Hitting Times
