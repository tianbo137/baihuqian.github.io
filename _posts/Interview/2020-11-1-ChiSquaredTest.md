---
layout: post
title: "Chi-squared Test and application in Machine Learning"
date: '2020-11-1'
tags:
 - Interview
 - Statitics
---

# Chi-squared Test

Chi-squared test, a statistical method, is used by machine learning methods to check the correlation between two categorical variables.

## Defintion: Chi-squared distribution
If $$Z_1, ..., Z_k$$ are independent, standard normal random variables, then the sum of their squares,

$$ \begin{align} Q\ =\sum _{i=1}^{k}Z_{i}^{2}, \end{align} $$

is distributed according to the chi-squared distribution with k degrees of freedom. This is usually denoted as

$$ \begin{align}  Q\ \sim \ \chi ^{2}(k) \end{align} $$   

The chi-squared distribution has one parameter: a positive integer k that specifies the number of degrees of freedom (the number of $$Z_i$$'s). 

![chi_square](/assets/img/Chi-square_pdf.svg.png)
