---
layout: post
title: "One Line Proof that a Covariance Matrix is Positive Semidefinite"
date: '2020-11-1'
tags:
 - Statistics
---



Given a random vector c with zero mean, the covariance matrix $$\Sigma = E[cc^T]$$. We give a one line proof that it is positive semidefinite.

$$
\begin{align}
u^T\Sigma u = u^TE[cc^T]u = E[u^Tcc^Tu] = E[\|c^Tu\|^2] \ge 0.
\end{align}
$$
