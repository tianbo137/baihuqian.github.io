---
layout: post
title: "Key Assumptions of Linear and Logistic Regression"
date: '2020-11-1'
tags:
 - Interview
 - Statitics
---

# Assumptions of Linear Regression

**Linear regression** is an analysis that assesses whether one or more predictor variables (X) explain the dependent variable (Y).  The regression has five key assumptions:

    Linear relationship
    Multivariate normality
    No or little multicollinearity
    No auto-correlation
    Homoscedasticity

First, linear regression needs the relationship between the independent and dependent variables to be linear.  It is also important to check for outliers since linear regression is sensitive to outlier effects.  The linearity assumption can best be tested with scatter plots.

Secondly, the linear regression analysis requires all variables to be multivariate normal.  This assumption can best be checked with a histogram.  Normality can be checked with a Chi-square goodness of fit test.  When the data is not normally distributed a non-linear transformation (e.g., log-transformation) might fix this issue.

Thirdly, linear regression assumes that there is little or no multicollinearity in the data.  Multicollinearity occurs when the independent variables are too highly correlated with each other.

Multicollinearity may be tested with three central criteria:

1) Correlation matrix – when computing the matrix of Pearson’s Bivariate Correlation among all independent variables the correlation coefficients need to be smaller than 1.

2) Tolerance – the tolerance measures the influence of one independent variable on all other independent variables; the tolerance is calculated with an initial linear regression analysis.  Tolerance is defined as T = 1 – R² for these first step regression analysis.  With T < 0.1 there might be multicollinearity in the data and with T < 0.01 there certainly is.

3) Variance Inflation Factor (VIF) – the variance inflation factor of the linear regression is defined as VIF = 1/T. With VIF > 5 there is an indication that multicollinearity may be present; with VIF > 10 there is certainly multicollinearity among the variables.

If multicollinearity is found in the data, centering the data (that is deducting the mean of the variable from each score) might help to solve the problem.  However, the simplest way to address the problem is to remove independent variables with high VIF values.

Fourthly, linear regression analysis requires that there is little or no autocorrelation in the data.  Autocorrelation occurs when the residuals are not independent from each other.  In other words when the value of y(x+1) is not independent from the value of y(x). For instance, this typically occurs in stock prices, where the price is not independent from the previous price.

The last assumption of the linear regression analysis is homoscedasticity.  The scatter plot is good way to check whether the data are homoscedastic (meaning the residuals are equal across the regression line). 
