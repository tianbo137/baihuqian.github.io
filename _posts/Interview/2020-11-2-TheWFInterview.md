---
layout: post
title: "The Soft Interview"
date: '2020-11-2'
tags:
 - Interview
---
# 软技能问题汇总: 


## Self-awareness:

* [Tell Me About Yourself.](https://medium.com/@CIcracked/tell-me-about-yourself-8342747ab9fb)
自我介绍。我看过一个YouTube的视频，关于how to introduce yourself。她介绍说，这个自我介绍一定要像坐电梯的一样：你是谁--> 你能做什么-->你为什么qualify for this job。一步一步升华。

* What Are Your Strength and Weaknesses?

* Introduce Education Experience

## Career Plan: 对于这个行业做research

* Why Do You Want to Work in X?

      work life balance, experience, compatitive package 
      
* What interests you in this job?    
        
* What Makes You Interested in this Position?

* Why banking industry
* Why Don't You Want To Do X Anymore?
* Where Would You Want to be Five Years From Now?

## Resume Question

* Tell Me About X Where X is a Random Phrase From Your Resume.

* Explain Your Thesis, 怎么讲给non-tech的人. 说说自己在学校的research，要求说出研究背景，Motivation，proposed方法和已经有的方法有什么不同，证明了什么统计定理，算法的convergence rate。 再说说研究兴趣. 一定要对自己的project有一个whole story。不要讲很多technical details，可能面试官也不是很理解，一定要告诉他们这个project可以干嘛，然后给一些high level的。methodology。

* When you realize your research has been fully investigated by other people, what will you do?

## Interpernsonal Relation 

* How Would You Deal with Difficuilt People?
* Tell Me About an Occasion on Which You Demonstrated Leadership Skills?
* Talk about situations where you solve problems
* Do You Prefer Working With Others or Solo?
* Describe a situation when there is a disagreement between you and your manager.
* 如果别人overlook一个严重的issue，怎么办
* 当团队有人不合作，怎么办？
* 和同事有冲突怎么办, Talk about a time you had a conflict with a team member and how you resolved it 
* Tell us about a time when you had to make a difficult decision at work without consulting management.  
* 讲述一次你比别人要先发现问题的经历

## Working Skill: 这个interview就是考察你解决实际问题的思路和能力（并不是technical的细节，而是从high-level讲述怎么解决实际问题）

* Are You Comfortable Working with Deadlines?
* What Qualitites Do You Offer, Apart from Being Smart?
* What Kind of Technologies Are You Familiar With?
* Describe the Situation that You Solved a Problem
* One Time Learn New Tools
* Describe the situation that you solved a problem that was more complicated than your first thought.
* Challenging work
* Why should we hire you?  
* What is your ideal work environment?  

# 问题出处于以下资料

1. [Quant Job Interview Questions and Answers](https://www.amazon.com/Quant-Interview-Questions-Answers-Second/dp/0987122827)
2. [Cracking the Coding Interview](https://www.amazon.com/Cracking-Coding-Interview-Programming-Questions/dp/0984782850)
3. [Build a Career in Data Science](https://www.amazon.com/Build-Career-Science-Jacqueline-Nolis/dp/1617296244)
4. [面经](https://www.xiakexing.me/)

# Technical Questions

## Probability and Statistics

What is random number? 如果你有一堆random numbers， 你会如何说服你的客户它们是 random 的。

统计学知识，线性代数，基础data cleansing，Monte Carlo Simulation。
probability计算（binomial distribution 和相应的hypothesis testing, 
weighted least square
什么是spurious correlation,
linear regression，怎么检验它的assumption；false positive；true negative是什么等等。
survival analysis
通过bayes rule 求 conditional prob, 就是常规的bayes 题目


问你如果有normal distribution 怎么simulate chi-square, 还有两个其他的distribution给忘记了
有normal cdf，怎么simulate uniform(a,b)
how to check multicollinearity（可以用correlation matrix, 还可以用VIF这个参数）
7.what is the assumption behind imputation of missing values with mean or median? other imputation methods ? why is it inappropriate to delete missing values.


Tech：
Prob: 6面的骰子，出现1-6的次数-baidu ????

Stochastic: B1,B2 是brownian Motion， 求E[(B1-B2) at t]

MC simulation
X～ Distribution(\sigma)
Y = F(X)
求 dE(Y)/d(\sigma)
1. 如何用Monte Carlo MarKov Chain （MCMC）产生多元随机变量。注意，不一定是多元正太分布，但是每一维的conditional distribution 是已知的。 提示：gibbs sampling
9. What is the difference between mathmatics models and statistical models?

10）a fair 6-sided dice, what's the expected number of toss to see all 6 distinct numbers?
11）Brownian Motion（martingle）基本概念题
2. 你学过什么数学，统计学，计量模型
3. MLE和LSE
4. Monte Carlo模型
5. 从统计学，ML，经济学，从你的专业角度解释什么是模型.
Optimization
Monte Carlo
6. statistical model, missing value
7. How to detect outlier?
3、有什么算法可以求平方根？（牛顿法）
4. 微积分：1）举例一些二阶导 为0的函数，2）一个函数boundry condition  is known, 这个函数唯一吗？
1、linear regression: 1）写出linear regression 的coefficient estimate beta的矩阵表达式， 2）linear regression有什么assumption。
2、概率题：1）Toss a coin, how many time it is expected to take before you toss two consecutive heads? 2）然后follow up最后推到generalize到n consecutive heads的表达式。
计算过程：x = 1/2(1+x) + 1/4(2+x) + (1/4 )* 2，generalization：x = (1/2)(x+1) + (1/4)(x+2) + ... + (1/(2^k))(x+k) + .. + (1/(2^N))(x+N) + (1/(2^N))(N)， x = 2^(N+1)-2
一些基础数据分析建模的问题，例如：how to detect and deal with outliers? 
一个应用题，有一些实际背景，最后转化成的统计问题就是，给一个uniform generator, 如何得到 exponential random variable。
9. 一个应用题，和geometric distribution 相关，具体不太记得了。

2， 根据我讲的项目，他们提了很多关于建模和模型验证的问题，基本上是每个 interviewer 轮着问， 记得的问题：
第一题是抛一个硬币，问连续出现2个H停止，期望要抛多少次。第二问接着第一问连续出现n个H停止，问期望。之后问linear regression的normal equation推倒，L1 penalty是啥，然后问了几个ode公式是否存在解，是否线性，然后问求integration的方法，

geometric distribution: 一道关于几何分布的应用题，关于客户第几个月会第一次违约，然后问这个模型现实中有哪些不合理的情况
Linear Regression(X-X_bar的情况): assumptions, 求least square estimate of beta0, beta1, variance of beta1_hat 。然后如果变成binary classification的情况，assumption有什么变化？
Binary Classification: response Ti~0 or 1, xi as predictor. Ti 服从参数为λ(xi)的exponential distribution，λ(xi)＝exp(beta0＋beta1*xi)。写出log likelihood和beta0 beta1的mle。然后这一个数值算法计算mle。如果beta1＝0，beta0的mle是多少？
Matrix: 二阶矩阵A [[1,b], [b,1]], 一个特征值是b+1,求对应的特征向量。然后求另一个特征值和特征向量，然后计算A^1/2。
Simulation: 有一个continuous uniform的generator(0,1)，如何生成1,2,3,4,5 discrete uniform的变量。然后给一个积分，如果用monte carlo求，写出算法步骤。
Data Manipulation, R SAS or Python:给三张表，先join两张，然后filter，然后再join第三张，groupby计算，最后orderby。
Example for two continuous Random Variable，uncorrelated but dependent
Spurious Correlation？
Correlation and causation example
How to check causation
How to determine causation from a rate. 其实后来经一位同学提醒，对同一指标（比如性别）不同组的人做t-test是比较好的。但是当时我就压根没往这块想。。。
      
brownian motion
Monte Carlo
一个人筛子的问题， 具体不太记的了      
geometric distribution
martingale
moving average
说有一个lognormal的随机变量X，X有一个参数是e，Y是X的函数，但是你并不知道Y的表达式，让你求dE(Y)/de。        
学过什么统计，数学计算的课程
一个abstract expectation求导，问打算怎么做，有几种办法，怎么优化，误差怎么算。

## Machine Learning

基础的machine learning的知识，类似它的优缺点

briefly introduce the procedure of data analyzing (research project, internship project 都行)

你课外有没有什么项目？ （我说了我做的kaggle，整个machine learning 的流程。 之前和microsoft的一些比较牛的engineer 一起做kaggle, 学了很多挺实用的，ensemble, meta feature这些东西）也知道了一些machine learning pipeline, 一边画一边讲给interviewer 听，感觉他挺满意的。

case study, 给了一个nlp的case。 我也是讲的比较细致，把target的构思，text representation (bag of words, TF-IDF), distance measurement (euclidean, cosine similarity), clustering building, initialisation (local and global optimal), hierachical clustering, 这些都讲了一遍。我感觉重点是一定要有逻辑，知道自己每一步在做什么，要达到什么目的, 有哪些pitfall 要注意，说专业术语的时候，再用通俗的话解释一遍。总之就是walk through this whole process， 然后可以和面试官讨论，你为什么要这样做（比如euclidean 还是 cosine similarity)， 询问他的意见。 就像他和你在一个团队里面工作一样， 把你当成他的同事，而不是面试官 （也就是说， 不要怕说错，要想着怎么把这个项目做好， 并且你对这个项目很有热情）。

case study, 一个A/B testing的case。给了一个图，横轴是时间，纵轴是每天设备报错的数量，比较test 和control。 先建模预测control group, 在用signficant test比较折线图下的面积。 注意纵轴是每天出错数，所以要累加起来。

case study, 这个case 我答得不好，乱说一通，可能题木理解错了。 给了一个真实的场景，条件也没给全（让我问他），让设计一个分析流程。题主这种开放性的问题非常非常差（从小到大考试哪有条件没给全的，这题有错吧，跳过不做。。。。）

输入如果数据量非常大，该怎么办？我回答的是先 random sampling, 取一小部分数据进行分析和理解，然后建立一个小的模型，看看想法是否可行，然后再扩大模型，应用到整个data set 上。不知道回答的对不对-baidu 1point3acres

模型的输出是怎么用的？ 用来判断医疗代码是不是正确的

我现在主要用Matlab 和 Scala，问能不能用Python？ 当然能

工作中有没有哪次感觉问题很容易解决，后来发现比想的复杂？怎么解决的？讲了一个自己项目中遇到的情况，这种情况很常见

我讲的项目是关于NLP 的，所以他们问了一些建模的细节问题

问了一个SQL 相关的问题，我不懂，回答说组里有2个 data analyst，他们负责提供数据

现在公司这个组有些什么人，我跟他们工作上是什么相处的

Data transfer

Parallel computing

描述一个project，你干什么role，过程，结果描述你会的软件，一个数据分析项目       

尤其是实习的project，有没有missing value都怎么填充的，分析之前怎么检验outlier，数据不均衡都用了什么方法，用了什么模型，模型怎么调参的，为什么这样调，每个有技术的细节基本都问到了。

PCA

算PCA1 and PCA 2， 顺带求variance. 

什么是ensembled methods, random forest,

machine learning为什么会这么popular…有什么缺点

case study给了一段时间内的default rate问如何collect data，可能有什么问题之类的

描述性质的题目，问ensemble tree 有哪，原理是什么

feature importance 是如measure的，讲出方法

if you have a sparse dataset in machine learning, how to resample

如果你同事build 了一个model， 其他参数都还不错了，variable 也选好了，现在把这个model 给你做一些改进。你怎么做？ 我回答的是看有没有simple version。我觉得还可以说，比如怎么解释这个model 方面给customers if necessary. 

data analysis experience, have you taken machine learning course?

complex or simple model, which gets overfitting more often?

difference between lasso and ridge? can you use ridge for variable selection

For random forest, how does it merge many decision trees?

what are the advantages and disadvantages of neural networks over ensemble trees? 

briefly introduce the procedure of data analyzing (research project, internship project 都行)

how to handle missing value: 1. assumptions? 2. techniques

Overfitting issue: 1. how to identify? 2. how to solve

Random forest: pros and cons, basic procedure, etc.

gradient boosting: algorithm, pros and cons

Neural Networks: pros and cons compared with other methods like gradient boosting, random forest, etc.
talk about your machine learning experience, when and where to use lasso and ridge regression, What is the con and pro of neural network compared to ensemble, explain the gradient boost, what is the pros and cons of deep trees, why random forest take average?

time series model是怎么选参数然后怎么validate， 

还问了ensemble方法有哪些，具体怎么实现的。

还聊了一些修过的课（其中还包括andrew的deep learning网课）

对Random Forest 的extrapolation effect的认识?


举例子说神经网络模型解释的项目经验. check ???? for more.


XGBoost 的参数n_estimators, max_depth ... (好多个) 是什么意义。


SVM 的原理是什么？有哪些参数？

讲一个例子与非技术人士交流统计模型

your data experiences 有多少讲多少。。讲了好多

missing data的处理

complex还是simple模型更容易overfit，overfitting怎么处理

gradiant boosting好在哪里，为什么work

课堂project做过哪些 上过哪些Data Science相关的课 在哪上的

lasso和ridge的区别 怎么选择

random forest模型为什么grune，怎么做，为什么比decision tree好

neural network的pros and cons，对比gradient boosting和random forest

how many ML models did you use，就都说了一遍

L1, L2: difference, pros v.s. cons, the intuition under why L1 is sparse.

some details of GBT, and v.s. RF.
说说random forest和svm的区别，你在什么情况下会倾向用哪一种，再说说bagging和random forest有啥不同

说说deep learning里面的vanishing gradient是什么，会带来什么问题，要怎样解决， 因为这种公司的ds岗面试感觉不太会涉及到deep learning，有可能是因为他看我简历上做了很多deep learning的research和proj；

现在要用Monte Carlo去模拟一个我感兴趣的random variable，大概讲讲过程 这个问题也蛮意外，一开始还有点发懵，然后就从random number generator开始胡乱扯了些原来课上学过的sampling的东西，没想到他来了句that's exactly what i need to hear

怎样去做feature selection和prevent overfitting，两种regularization都是怎么回事，区别和选择等等

问了一些 data resources, preprocessing 相关的问题。可能是因为模型本身还是比较学术，而数据这部分和他们比较接近吧。

10mins 问了问我的一个 Consulting project。其中我做了 classification ，涉及 imbalanced data。就以此问了下 我们的处理方法，以及 关注的 metrics。这俩都是比较standard 的 ML 面试问题。      

10mins 问了 我的intern project。就其中 variable selection 部分问了一下细节 我是咋做的。      
基本还是按着CV上的project 找一些他们懂的点 问一问 看看熟悉程度。再加俩ML,SQL问题。而且似乎应该是会在他们组里intern，

Describe all the steps to build a predictive model. 还有一些follow up 的问题，比如如何 validate model, performance metric 之类的。

你要去optimize a cost function, 你会用什么办法？（答 gradient descent）接下来问了用 gradient descent 的条件，用简单易懂的语言描述一下 gradient descent，为什么选择 gradient descent。你还知道什么别的办法 (答 Newton, Quasi-Newton)，随意聊了一下后两个。

how to handle missing value: 1. assumptions? 2. techniques

Overfitting issue: 1. how to identify? 2. how to solve


## Programming

写code 题目， 有一个list， 想得到unique pairs of elements in list

一长串数字，求每1000个连续的数字的mean ：比如a0...a999, a1...a1000,这样。 时间复杂度 follow up 求medium时间复杂度

Wells Fargo对C++和算法的要求相对其他投行还是比较高的，虽然每个面试官可能有一个题库，但是他会在里面选择和你简历相关的试题，我在简历里兴趣爱好处写了下棋，然后就被问了一个八皇后问题。

聊objective programming

啥是AI……（对，就是这个问题……）

一个kolmogorov什么东西。。。。不是概率论的，像是算法或者编程里的概念，楼主表示不知道。莫非是Chapman Kolmogorov equation？还有，求问最后一个题楼主是怎么答的？我想是用monte carlo算出expectation，然后用variance reduction，但是variance reduction怎么用呢？

moving average。一开始没理解清楚，以为是每1000number求一个mean，后来意识到是逐位后移。原谅楼主xx了。。。


One SQL-type question: 给定一个三列的表, 本质上需要完成一个先grouping 再group内求max record 的操作。问在 R / Python 中如何实现。我对R中dplyr 用过一阵，就此谈了一下。

找出一个数列最小值 (binary search)

说一下R与Python的区别。

最后考了一些C++的问题，指针和reference的区别，什么时候用哪个比较好….

算一个很大的流数据的平均值， 告诉面试官自己的想法就可以了

介绍自己的编程能力

