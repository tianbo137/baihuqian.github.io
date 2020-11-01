---
layout: post
title: "Key Assumptions of Linear and Logistic Regression"
date: '2020-11-1'
tags:
 - Interview
 - Statitics
---

# Assumptions of Linear Regression

**Linear regression** is an analysis that assesses whether one or more predictor variables (X) explain the dependent variable (Y).  

$$ \begin{align} Y = \beta_0 + \beta_1 X + \epsilon \end{align} $$ where $$\epsilon$$ is the noise.

The regression has five key assumptions:

    Linear relationship
    Multivariate normality
    No or little multicollinearity
    No auto-correlation
    Homoscedasticity

1.  Linear regression needs the relationship between the independent and dependent variables to be linear.  It is also important to check for outliers since linear regression is sensitive to outlier effects.  The linearity assumption can best be tested with scatter plots.


2. The linear regression analysis requires all variables to be multivariate normal.  This assumption can best be checked with a histogram.  Normality can be checked with a Chi-square goodness of fit test.  When the data is not normally distributed a non-linear transformation (e.g., log-transformation) might fix this issue.

3. Linear regression assumes that there is little or no multicollinearity in the data.  Multicollinearity occurs when the independent variables are too highly correlated with each other.

Multicollinearity may be tested with three central criteria:

1) Correlation matrix – when computing the matrix of Pearson’s Bivariate Correlation among all independent variables the correlation coefficients need to be smaller than 1.

2) Tolerance – the tolerance measures the influence of one independent variable on all other independent variables; the tolerance is calculated with an initial linear regression analysis.  Tolerance is defined as T = 1 – R² for these first step regression analysis.  With T < 0.1 there might be multicollinearity in the data and with T < 0.01 there certainly is.

3) Variance Inflation Factor (VIF) – the variance inflation factor of the linear regression is defined as VIF = 1/T. With VIF > 5 there is an indication that multicollinearity may be present; with VIF > 10 there is certainly multicollinearity among the variables.

If multicollinearity is found in the data, centering the data (that is deducting the mean of the variable from each score) might help to solve the problem.  However, the simplest way to address the problem is to remove independent variables with high VIF values.

4. Linear regression analysis requires that there is little or no autocorrelation in the data.  Autocorrelation occurs when the residuals are not independent from each other.  In other words when the value of y(x+1) is not independent from the value of y(x). For instance, this typically occurs in stock prices, where the price is not independent from the previous price.

5. The last assumption of the linear regression analysis is homoscedasticity.  The scatter plot is good way to check whether the data are homoscedastic. Homoscedasticity describes a situation in which the error term (that is, the “noise” or random disturbance in the relationship between the independent variables and the dependent variable) is the same across all values of the independent variables.  Heteroscedasticity (the violation of homoscedasticity) is present when the size of the error term differs across values of an independent variable.  The impact of violating the assumption of homoscedasticity is a matter of degree, increasing as heteroscedasticity increases.

A simple bivariate example can help to illustrate heteroscedasticity: Imagine we have data on family income and spending on luxury items.  Using bivariate regression, we use family income to predict luxury spending.  As expected, there is a strong, positive association between income and spending.  Upon examining the residuals we detect a problem – the residuals are very small for low values of family income (almost all families with low incomes don’t spend much on luxury items) while there is great variation in the size of the residuals for wealthier families (some families spend a great deal on luxury items while some are more moderate in their luxury spending).  This situation represents heteroscedasticity because the size of the error varies across values of the independent variable.  Examining a scatterplot of the residuals against the predicted values of the dependent variable would show a classic cone-shaped pattern of heteroscedasticity.

The problem that heteroscedasticity presents for regression models is simple.  Recall that least-squares regression seeks to minimize residuals and in turn produce the smallest possible standard errors.  By definition, OLS regression gives equal weight to all observations, but when heteroscedasticity is present, the cases with larger disturbances have more “pull” than other observations.  In this case, weighted least squares regression would be more appropriate, as it down-weights those observations with larger disturbances.

A more serious problem associated with heteroscedasticity is the fact that the standard errors are biased.  Because the standard error is central to conducting significance tests and calculating confidence intervals, biased standard errors lead to incorrect conclusions about the significance of the regression coefficients.  
