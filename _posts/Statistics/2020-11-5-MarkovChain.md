---
layout: post
title: "Markov Chain"
date: '2020-11-5'
tags:
 - Statistics
 - Interview
---

One of the most commonly used stochastic models is that of a **Markov 
chain**. To motivate this discussion, we will start with a simple 
example: Consider a **random walk** on the set of integers between 
1 and 5, moving randomly through that set, say one move per second, 
according to the following scheme.  If we are currently at position i, 
then one time period later we will be at either i-1, i or i+1, 
according to the outcome of rolling a fair die --- we move to i-1 if 
the die comes up 1 or 2, stay at i if the die comes up 3 or 4, and 
move to i+1 in the case of a 5 or 6.  For the special cases of i = 1 
and i = 5, we simply move to 2 or 4, respectively.

The integers 1 through 5 form the **state space** for this process;
if we are currently at 4, for instance, we say we are in state 4.
Letting $X _ t$ represent the position of the particle at time t, $$t = 0,
1,2,\ldots$$ which is called the **state** of the process at time t.
