---
layout: post
title: "Chi-squared Test and application in Machine Learning"
date: '2020-11-1'
tags:
 - Interview
 - Statitics
---

# Chi-squared Test

* A chi-square goodness of fit test determines if a sample data matches a population. 
* A chi-square test for independence compares two variables in a contingency table to see if they are related. 

In a more general sense, it tests to see whether distributions of categorical variables differ from each another.
     * A very small chi square test statistic means that your observed data fits your expected data extremely well. In other words, there is a relationship.
     * A very large chi square test statistic means that the data does not fit very well. In other words, there isn’t a relationship.


## Defintion: Chi-squared distribution
If $$Z_1, ..., Z_k$$ are independent, standard normal random variables, then the sum of their squares,

$$ \begin{align} Q\ =\sum _{i=1}^{k}Z_{i}^{2}, \end{align} $$

is distributed according to the chi-squared distribution with k degrees of freedom. This is usually denoted as

$$ \begin{align}  Q\ \sim \ \chi ^{2}(k) \end{align} $$   

The chi-squared distribution has one parameter: a positive integer k that specifies the number of degrees of freedom (the number of $$Z_i$$'s). 

![chi_square](/assets/img/Chi-square_pdf.svg.png)
