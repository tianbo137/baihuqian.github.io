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

![img2](/assets/img/process2.jpeg)

1. Data cleaning: 

       Step 1: Remove duplicates at id level, that is, the level at which the rows should be unique.

       Step 2: Transform qualitative data into quantitative data by mapping strings to integers. Eg: for a hotel, they offer packages for 2 days, 5 days and 10 days. We can encode the data as: 1=2 days, 2= 5 days and 3 = 10 days

       Step 3: Handle outliers. Check outliers on all key variables, especially the computed ones.

       Step 4: Handle missing values, columns etc. Check for blank columns, large % of blank data, high % of same data. Look for columns which are entirely blank. This can happen in case some join fails or in case there is some error in data extraction. Check the % of blank cases by each column and frequency distributions to find out if the same data is being repeated in more cases than expected.

       Step 5: Handle missing values

2. Data integration: using multiple databases, data cubes, or files and dealing with a unified view of the combined data, enabling you to query and manipulate all of your data from a single interface and derive analytics and statistics. While the sources and types of data continue to grow and it aims to solve many of the problems that come about when you have disparate information stored in different applications across an organization.

3. Data transformation: to convert data from one format to be in another format to transform data to make it compatible with other data, move it to another system, join it with other data, or aggregate information in the data. Example of Data transformation is normalization and aggregation.

4. Data reduction: reducing the volume but producing the same or similar analytical results.

5. Data discretization: part of data reduction, replacing numerical attributes with nominal ones.
