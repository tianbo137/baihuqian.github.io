---
layout: post
title: "Data Preprocessing 101"
date: '2020-12-4'
tags:
 - DataScience
---
![img1](/assets/img/proceesing1.jpeg)

## The Problem

Data preprocessing is one of most important phase of a machine learning project. The phrase **"garbage in, garbage out"** is particularly applicable to data mining and machine learning projects. Data-gathering methods are often loosely controlled, resulting in noisy values (e.g., Income: −100), impossible data combinations (e.g., Sex: Male, Pregnant: Yes), missing values, etc. Analyzing data that has not been carefully screened for such problems can produce misleading results. Thus, the representation and quality of data are first and foremost before running an analysis. 

## Steps in Data Preprocessing:

### 1. Data cleaning: 

1. Remove duplicates at id level, that is, the level at which the rows should be unique.

2. Transform qualitative data into quantitative data by mapping strings to integers. Eg: for a hotel, they offer packages for 2 days, 5 days and 10 days. We can encode the data as: 1=2 days, 2= 5 days and 3 = 10 days

3. Handle outliers. Check outliers on all key variables, especially the computed ones.

4. Handle missing values, columns etc. Check for blank columns, large % of blank data, high % of same data. Look for columns which are entirely blank. This can happen in case some join fails or in case there is some error in data extraction. Check the % of blank cases by each column and frequency distributions to find out if the same data is being repeated in more cases than expected.


### 2. Data Integration 
This process is used when data is gathered from various data sources and data are combined to form consistent data. This data after performing cleaning is used for analysis.

### 3. Data Transformation 
In this step we will convert the raw data to a required scale according to the need of the model, we are building. There are many options used for transforming the data:
        Normalization
        Aggregation
        Generalization

### 4. Data Reduction 
After data transformation, redundancy in the data as to be removed by feature selection based on correlation/ PCA etc. Check the ski-learn resource on feature selection [here](https://scikit-learn.org/stable/modules/feature_selection.html)
