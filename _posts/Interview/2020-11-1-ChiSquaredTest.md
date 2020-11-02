---
layout: post
title: "Chi-squared Test and application in Machine Learning"
date: '2020-11-1'
tags:
 - Interview
 - Statitics
---

# Chi-squared Test

In practice, there are two possible Chi-squared tests:
* A chi-square goodness of fit test determines if a sample data matches a population. 
* A chi-square test for independence compares two variables in a contingency table to see if they are related. 

In general, we consider the Chi-squared test to see whether distributions of categorical variables differ from each another. 

## 1. Defintion: Chi-squared Distribution
If $$Z_1, ..., Z_k$$ are independent, standard normal random variables, then the sum of their squares,

$$ \begin{align} Q\ =\sum _{i=1}^{k}Z_{i}^{2}, \end{align} $$

is distributed according to the chi-squared distribution with k degrees of freedom. This is usually denoted as

$$ \begin{align}  Q\ \sim \ \chi ^{2}(k) \end{align} $$   

The chi-squared distribution has one parameter: a positive integer k that specifies the number of degrees of freedom (the number of $$Z_i$$'s). 

![chi_square](/assets/img/Chi-square_pdf.svg.png)

The term ‘chi square’ (pronounced with a hard ‘ch’) is used because the Greek letter $$\chi$$ is used to define this distribution. It will be seen that the elements on which this distribution is based are squared, so that the symbol $$\chi^2$$ is used to denote the distribution.

## 2. Chi-squared Statistics

For both the goodness of fit test and the test of independence, the Chi-squared statistic is the same. For both of these tests, all the categories into which the data have been divided are used. The data obtained from the sample are referred to as the observed numbers of cases. These are the frequencies of occurrence for each category into which the data have been grouped.  In the Chi-squared tests, the null hypothesis makes a statement concerning how many cases are to be expected in each category if this hypothesis is correct. The Chi-squared test is based on the difference between the observed and the expected values for each category. The chi square statistic is defined as

$$\begin{align} \chi^2 = \sum \frac{(O_i - E_i)^2}{E_i}\end{align}$$

where $$O_i$$ is the observed number of cases in category i, and $$ E_i$$ is the expected number of cases in category i. This Chi-squared statistic is obtained by calculating the difference between the observed number of cases and the expected number of cases in each category. This difference is squared and divided by the expected number of cases in that category.  These values are then added for all the categories, and the total is referred to as the Chi-squared statistic.

## 3. Approximation 
According to the work of Pearson and many afterwards, under the circumstance of the null hypothesis being correct (i.e. the observed are part of the large population satisfying the expected statistical behavior), as $$n \rightarrow \infty$$, the limiting distribution of the quantity given below is the $$\chi^2$$-distribution. In practice, the condition in which the Chi-square statistic is approximated by the theoretical Chi-squared distribution, is that the sample size is reasonably large and the rough rule of thumb concerning sample size is that there should be at least 5 expected cases per category.
