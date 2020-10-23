---
layout: "post"
title: "MLF 4: Training vs Testing"
date: "2020-10-22"
tags:
 - MachineLearning
 - DataScience
---

Because of the NFL (No Free Lunch) Theorem, it seems that machine learning is doomed to fail. With the introduction of statistical tools, we learned that when the random sample size is large enough and the number of hypothesis is reasonably small, then machine learning is viable. In this part, we will rigorously disucss the core problem of when can a machine learn.

## Preview and Recap

Let us look at the following flow chart of supervised learning:

![flow](/assets/img/learning_flow.png) 

In the above flow, we need that the training dataset and the test dataset all obey the same population distribution, this is the fundamental reason why machine can learn. Also, we require that the training dataset is relatively large and the number of hypothesis is reasonably bounded. Therefore, according to the Hoeffding inequality, we can show that our algorithm can be generalized well. With good training, we can therefore get our final model $$ g \cong f$$,  the latter being our noisy target.
