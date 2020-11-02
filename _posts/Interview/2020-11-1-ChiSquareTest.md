---
layout: post
title: "Chi-square Test and application in Machine Learning"
date: '2020-11-1'
tags:
 - Interview
 - Statitics
---

# Assumptions of Linear Regression

**Linear regression** is an analysis that assesses whether one or more predictor variables (X) explain the dependent variable (Y):  

$$ \begin{align} Y = \beta_0 + \beta_1 X  \end{align} $$ 

whose validity involves five key assumptions:

### 1.  Linear relationship
Linear regression needs the relationship between the independent and dependent variables to be linear.  It is also important to check for outliers since linear regression is sensitive to outlier effects.  The linearity assumption can best be tested with scatter plots.


### 2. Multivariate normality

The linear regression analysis requires all variables to be multivariate normal.  This assumption can best be checked with a histogram.  Normality can be checked with a Chi-square goodness of fit test. Also, we can look at skewness and kurtosis: skewness should be within the range ±2. kurtosis values should be within range of ±7. When the data is not normally distributed a non-linear transformation (e.g., log-transformation) might fix this issue.

### 3. No or little multicollinearity

Linear regression assumes that there is little or no multicollinearity in the data.  Multicollinearity occurs when the independent variables are too highly correlated with each other.

Multicollinearity may be tested with three central criteria:

#### (3.1)
Correlation matrix – when computing the matrix of Pearson’s Bivariate Correlation among all independent variables the correlation coefficients need to be smaller than 1.

#### (3.2) 
Tolerance – the tolerance measures the influence of one independent variable on all other independent variables; the tolerance is calculated with an initial linear regression analysis.  Tolerance is defined as T = 1 – R² for these first step regression analysis.  With T < 0.1 there might be multicollinearity in the data and with T < 0.01 there certainly is.

#### (3.3)
Variance Inflation Factor (VIF) – the variance inflation factor of the linear regression is defined as VIF = 1/T. With VIF > 5 there is an indication that multicollinearity may be present; with VIF > 10 there is certainly multicollinearity among the variables.

If multicollinearity is found in the data, centering the data (that is deducting the mean of the variable from each score) might help to solve the problem.  However, the simplest way to address the problem is to remove independent variables with high VIF values.

### 4. No auto-correlation
Linear regression analysis requires that there is little or no autocorrelation in the data.  Autocorrelation occurs when the residuals are not independent from each other.  In other words when the value of y(x+1) is not independent from the value of y(x). For instance, this typically occurs in stock prices, where the price is not independent from the previous price.

### 5. Homoscedasticity
The last assumption of the linear regression analysis is homoscedasticity.  The scatter plot is good way to check whether the data are homoscedastic. Homoscedasticity describes a situation in which the error term (that is, the “noise” or random disturbance in the relationship between the independent variables and the dependent variable) is the same across all values of the independent variables.  Heteroscedasticity (the violation of homoscedasticity) is present when the size of the error term differs across values of an independent variable.  The impact of violating the assumption of homoscedasticity is a matter of degree, increasing as heteroscedasticity increases.

A simple bivariate example can help to illustrate heteroscedasticity: Imagine we have data on family income and spending on luxury items.  Using bivariate regression, we use family income to predict luxury spending.  As expected, there is a strong, positive association between income and spending.  Upon examining the residuals we detect a problem – the residuals are very small for low values of family income (almost all families with low incomes don’t spend much on luxury items) while there is great variation in the size of the residuals for wealthier families (some families spend a great deal on luxury items while some are more moderate in their luxury spending).  This situation represents heteroscedasticity because the size of the error varies across values of the independent variable.  Examining a scatterplot of the residuals against the predicted values of the dependent variable would show a classic cone-shaped pattern of heteroscedasticity.

The problem that heteroscedasticity presents for regression models is simple.  Recall that least-squares regression seeks to minimize residuals and in turn produce the smallest possible standard errors.  By definition, OLS regression gives equal weight to all observations, but when heteroscedasticity is present, the cases with larger disturbances have more “pull” than other observations.  In this case, weighted least squares regression would be more appropriate, as it down-weights those observations with larger disturbances.

A more serious problem associated with heteroscedasticity is the fact that the standard errors are biased.  Because the standard error is central to conducting significance tests and calculating confidence intervals, biased standard errors lead to incorrect conclusions about the significance of the regression coefficients.

# Assumptions of Binary Logistic Regression
Logistic regression is the appropriate regression analysis to conduct when the dependent variable is dichotomous (binary).  Like all regression analyses, the logistic regression is a predictive analysis.  Logistic regression is used to describe data and to explain the relationship between one dependent binary variable and one or more nominal, ordinal, interval or ratio-level independent variables.

$$ \begin{align} \text{log}\big( \frac{P(Y =1)}{1 - P(Y =1)} \big) = \beta_0 + \beta_1 X  \end{align} $$ 

Logistic regression requires the following assumptions to be valid:

### 1. Appropriate Outcome Structure

To begin, one of the main assumptions of logistic regression is the appropriate structure of the outcome variable.  Binary  logistic  regression  requires  the  dependent  variable  to  be  binary  and  ordinal  logistic  regression requires the dependent variable to be ordinal.

### 2. Observation Independence

Logistic  regression  requires  the  observations  to  be  independent  of  each  other.    In  other  words,  the  observations should not come from repeated measurements or matched data.

### 3. The Absence Of Multicoliearity

Logistic regression requires there to be little or no multicollinearity among the independent variables.  This means that the independent variables should not be too highly correlated with each other.

### 4. Linearity Of Independent Variables And Log Odds

Logistic regression assumes linearity of independent variables and log odds. Although this analysis does not require the dependent and independent variables to be related linearly, it requires that the independent variables are linearly related to the log odds.

### 5. A Large Sample Size

Finally, logistic regression typically requires a large sample size.  A general guideline is that you need at minimum of 10 cases with the least frequent outcome for each independent variable in your model. For example, if you have 5 independent variables and the expected probability of your least frequent outcome is .10, then you would need a minimum sample size of 500 (10*5 / .10).
