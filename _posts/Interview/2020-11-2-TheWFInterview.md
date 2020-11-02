---
layout: post
title: "The Soft Interview"
date: '2020-11-2'
tags:
 - Interview
---
# 软技能问题汇总: 

### 0. Tell Me About Yourself.

### 1. Why Do You Want to Work in X?

### 2. Tell Me About X Where X is a Random Phrase From Your Resume.

### 3. Why Don't You Want To Do X Anymore?

### 4. How Would You Deal with Difficuilt People?

### 5. What Are Your Strength and Weaknesses?

### 6. Are You Comfortable Working with Deadlines?

### 7. Where Would You Want to be Five Years From Now?

### 8. Explain Your Thesis.

### 9. Do You Own Any Shares?

### 10. What Qualitites Do You Offer, Apart from Being Smart?

### 11. Tell Me About an Occasion on Which You Demonstrated Leadership Skills?

### 12. Do You Prefer Working With Others or Solo?

### 13. What Kind of Technologies Are You Familiar With?

### 14. What Makes You Interested in this Position?

### 15. Describe the Situation that You Solved a Problem

### 16. Introduce Education Experience

### 17. One Time Learn New Tools

### 18. One task you thought easy at first and turned out to be hard

### 19. Challenging work

### 20. Describe a situation when there is a disagreement between you and your manager

why banking industry
2. talk about situations where you solve problems
因为过程中我提到了实习的项目，所以跟进问了不少项目的细节. 
总结：整个behavior部分的题目感觉和之前面经提到的类似，所以说明就是按照题库里来问的。然后我结合实习经历讲的，所以问了我很多工作的细节。从这里看出这个interview就是考察你解决实际问题的思路和能力（并不是technical的细节，而是从high-level讲述怎么解决实际问题）



# 问题出处于以下资料

1. [Quant Job Interview Questions and Answers](https://www.amazon.com/Quant-Interview-Questions-Answers-Second/dp/0987122827)
2. [Cracking the Coding Interview](https://www.amazon.com/Cracking-Coding-Interview-Programming-Questions/dp/0984782850)
3. [Build a Career in Data Science](https://www.amazon.com/Build-Career-Science-Jacqueline-Nolis/dp/1617296244)
4. Various Online Sources

# Technical Questions

probability计算（binomial distribution 和相应的hypothesis testing, 
PCA
weighted least square和machine learning的一些概念题，比如什么是ensembled methods, random forest, 
什么是spurious correlation,
machine learning为什么会这么popular…有什么缺点
case study给了一段时间内的default rate问如何collect data，可能有什么问题之类的
通过bayes rule 求 conditional prob, 就是常规的bayes 题目
问你如果有normal distribution 怎么simulate chi-square, 还有两个其他的distribution给忘记了
算PCA1 and PCA 2， 顺带求variance. 
描述性质的题目，问ensemble tree 有哪，原理是什么
写code 题目， 有一个list， 想得到unique pairs of elements in list 
有normal cdf，怎么simulate uniform(a,b)
feature importance 是如measure的，讲出方法
how to check multicollinearity（可以用correlation matrix, 还可以用VIF这个参数）
if you have a sparse dataset in machine learning, how to resample
   如果你同事build 了一个model， 其他参数都还不错了，variable 也选好了，现在把这个model 给你做一些改进。你怎么做？ 我回答的是看有没有simple version。我觉得还可以说，比如怎么解释这个model 方面给customers if necessary. 

3.talk about your dissertation
4.data analysis experience, have you taken machine learning course?
5.complex or simple model, which gets overfitting more often?
6.difference between lasso and ridge? can you use ridge for variable selection
7.what is the assumption behind imputation of missing values with mean or median? other imputation methods ? why is it inappropriate to delete missing values.
8. For random forest, how does it merge many decision trees?
9. what are the advantages and disadvantages of neural networks over ensemble trees? 
1. 介绍自己，做的research，PhD thesis的大致内容
2. Behavior question: when you realize your research has been fully investigated by other people, what will you do?
3. briefly introduce the procedure of data analyzing (research project, internship project 都行)
4. how to handle missing value: 1. assumptions? 2. techniques
5. Overfitting issue: 1. how to identify? 2. how to solve
6. Random forest: pros and cons, basic procedure, etc.
7. gradient boosting: algorithm, pros and cons
8. Neural Networks: pros and cons compared with other methods like gradient boosting, random forest, etc.

BQ: thesis做了什么，怎么讲给non-tech的人
BQ: 如果别人overlook一个严重的issue，怎么办

Tech：
Prob: 6面的骰子，出现1-6的次数-baidu ????

Stochastic:
B1,B2 是brownian Motion， 求E[(B1-B2) at t]

Alg:
一长串数字，求每1000个连续的数字的mean ：比如a0...a999, a1...a1000,这样。
时间复杂度
follow up 求medium
时间复杂度

MC simulation
X～ Distribution(\sigma)
Y = F(X)
求 dE(Y)/d(\sigma)

这里已经有面经了，talk about your machine learning experience, when and where to use lasso and ridge regression, What is the con and pro of neural network compared to ensemble, explain the gradient boost, what is the pros and cons of deep trees, why random forest take average?

Wells Fargo对C++和算法的要求相对其他投行还是比较高的，虽然每个面试官可能有一个题库，但是他会在里面选择和你简历相关的试题，我在简历里兴趣爱好处写了下棋，然后就被问了一个八皇后问题。别的behavioral还有聊research，聊Ph.D.，还聊了一些修过的课（其中还包括andrew的deep learning网课）。总而言之 自己的简历一定要好好过一遍。还有一些technical的问题还比较基础，time series model是怎么选参数然后怎么validate， 有一道简单的算概率题， 还有一道算非齐次ODE的题，还问了ensemble方法有哪些，具体怎么实现的。整个面试过程长达1个半小时。面试结果会在年底揭晓，最后的superday在1月中旬。希望对大家有帮助。以及***…

1. 如何用Monte Carlo MarKov Chain （MCMC）产生多元随机变量。注意，不一定是多元正太分布，但是每一维的conditional distribution 是已知的。 提示：gibbs sampling
2. Behavior questions: Why Wells Fargo? Why Quantitative associate?

3. 对Random Forest 的extrapolation effect的认识?

4. 举例子说神经网络模型解释的项目经验. check ???? for more.

5. XGBoost 的参数n_estimators, max_depth ... (好多个) 是什么意义。

6. SVM 的原理是什么？有哪些参数？

7. 说说自己在学校的research，要求说出研究背景，Motivation，proposed方法和已经有的方法有什么不同，证明了什么统计定理，算法的convergence rate。 再说说研究兴趣

8. Behavior: 举个例子，当团队有人不合作，怎么办？

9. What is the difference between mathmatics models and statistical models?

1）聊简历，聊research
2）聊objective programming
3）啥是AI……（对，就是这个问题……）
4）一个kolmogorov什么东西。。。。不是概率论的，像是算法或者编程里的概念，楼主表示不知道。
5）BQ：why WF、why quant
6）简历问题，涉及ML
7）how many ML models did you use，就都说了一遍
8）BQ：why capital market
9）BQ：和同事有冲突怎么办
10）a fair 6-sided dice, what's the expected number of toss to see all 6 distinct numbers?
11）Brownian Motion（martingle）基本概念题
12）moving average。一开始没理解清楚，以为是每1000number求一个mean，后来意识到是逐位后移。原谅楼主xx了。。。
13）一个abstract expectation求导，问打算怎么做，有几种办法，怎么优化，误差怎么算。

最后说hr应该shortly会给你消息，希望这里的小伙伴们加油。
为接下来的面试***，求好运！！！！！



===== 2楼 =====

莫非是Chapman Kolmogorov equation？还有，求问最后一个题楼主是怎么答的？我想是用monte carlo算出expectation，然后用variance reduction，但是variance reduction怎么用呢？希望楼主能够详细的解答一下，我不是数学背景，很多东西都不知道。

问题1：why wells fargo
问题2：talk about your dissertation
问题3：讲一个例子与非技术人士交流统计模型
问题4：your data experiences 有多少讲多少。。讲了好多
问题5：missing data的处理
问题6：complex还是simple模型更容易overfit，overfitting怎么处理
问题7：gradiant boosting好在哪里，为什么work
问题8：课堂project做过哪些 上过哪些Data Science相关的课 在哪上的
问题9：lasso和ridge的区别 怎么选择
问题10：random forest模型为什么grune，怎么做，为什么比decision tree好
问题11：neural network的pros and cons，对比gradient boosting和random forest


上来先让你自我介绍一下，然后说说自己的research
然后除了自己的research之外再讲一个实际的project经历，我说的我上一个实习。
关于这两个，问的巨详细。尤其是实习的project，有没有missing value都怎么填充的，分析之前怎么检验outlier，数据不均衡都用了什么方法，用了什么模型，模型怎么调参的，为什么这样调，每个有技术的细节基本都问到了。

来贡献一个 金融行业 DS intern 面试的面经。-baidu ????
面试官国人小哥。上来先阐明 会聊一聊简历 + 一些ML问题，后者是公司要求的(听意思是比较固定范围的) 答不上来也无所谓
1. 10 mins on my research project (finance-related)。听我讲了讲，然后问了一些 data resources, preprocessing 相关的问题。可能是因为模型本身还是比较学术，而数据这部分和他们比较接近吧。
2. ML question 1:
      L1, L2: difference, pros v.s. cons, the intuition under why L1 is sparse.
3. ML question 2:
      some details of GBT, and v.s. RF.
4. 10mins 问了问我的一个 Consulting project。其中我做了 classification ，涉及 imbalanced data。就以此问了下 我们的处理方法，以及 关注的 metrics。这俩都是比较standard 的 ML 面试问题。
5. 10mins 问了 我的intern project。就其中 variable selection 部分问了一下细节 我是咋做的。
6. One SQL-type question: 给定一个三列的表, 本质上需要完成一个先grouping 再group内求max record 的操作。问在 R / Python 中如何实现。我对R中dplyr 用过一阵，就此谈了一下。

总体而言还是非常nice和愉快的~ 基本还是按着CV上的project 找一些他们懂的点 问一问 看看熟悉程度。再加俩ML,SQL问题。而且似乎应该是会在他们组里intern，所以感觉不像大厂找个其他地方来的面试官，我感觉那样考试以为更浓一些，需要准备一番。

1、linear regression: 1）写出linear regression 的coefficient estimate beta的矩阵表达式， 2）linear regression有什么assumption。
2、概率题：1）Toss a coin, how many time it is expected to take before you toss two consecutive heads? 2）然后follow up最后推到generalize到n consecutive heads的表达式。
计算过程：x = 1/2(1+x) + 1/4(2+x) + (1/4 )* 2，generalization：x = (1/2)(x+1) + (1/4)(x+2) + ... + (1/(2^k))(x+k) + .. + (1/(2^N))(x+N) + (1/(2^N))(N)， x = 2^(N+1)-2


3、有什么算法可以求平方根？（牛顿法）
4. 微积分：1）举例一些二阶导 为0的函数，2）一个函数boundry condition  is known, 这个函数唯一吗？
5. 找出一个数列最小值 (binary search)


6. statistical model, missing value
7. How to detect outlier?

题目不难，但是需要准备到一些数值计算，算法和统计的基本知识，

校招投的简历，所以也就没有recruiter的电面，直接是tech电面。
interviewer是个年纪比较大的data scientist，在WF已经十几年了，背景是Econometrics的PhD。

首先是常规地聊简历，做过的research/proj，很简单，聊了大概15分钟。
然后就是Data Science和machine learning的随机测试。问到的问题有：
（1）

说说random forest和svm的区别，你在什么情况下会倾向用哪一种，再说说bagging和random forest有啥不同

；
（2）

说说deep learning里面的vanishing gradient是什么，会带来什么问题，要怎样解决

- 说实话，我真没预料到会问这个问题，因为这种公司的ds岗面试感觉不太会涉及到deep learning，有可能是因为他看我简历上做了很多deep learning的research和proj；
（3）

现在要用Monte Carlo去模拟一个我感兴趣的random variable，大概讲讲过程

- 这个问题也蛮意外，一开始还有点发懵，然后就从random number generator开始胡乱扯了些原来课上学过的sampling的东西，没想到他来了句that's exactly what i need to hear。。。-baidu ????
（4）

怎样去做feature selection和prevent overfitting，两种regularization都是怎么回事，区别和选择等等

。
此外还问了些关于ML的小问题，都比较简单。问问题的过程持续了大概半个来小时，之后就是我问他问题，聊了十来分钟。

整个过程持续了不到一个小时，总体比较愉快，问的问题也不难，就是这位interviewer那迷人的中东口音让我随时都得十分专心听他讲话。

他们process的也很快，面完一星期就通知onsite面。

第一轮：一对一面试

偏behavioral，也有一些创新的fit问题：

    Why should we hire you?  
    What are some things you learned from this interview today?  
    Why did you choose Deautsche bank?  
    If you were the CEO of the company what would you focus on in fighting the rise of competition from new and innovative fintechs?
    What is your ideal work environment?  

对于这个行业我之前做过很多research，而且很有兴趣，我在这方面比较有优势的。虽然没有特别多工作经验，但兴趣会让我在面试中聊到很多。面试之前导师就帮我梳理了story line，在面试技巧上复习了一下。当时面完就感觉不错。
第二轮：case study

一面结束，当天下午他们就给我发了一个case，让根据这个deal写一下我的分析思路，而且他们第二天早上就要。
我觉得时间太紧了，当时Chris就建议我要保证case完成的质量，稍微拖一拖。所以我就主动问他们说可不可以这个礼拜晚一点交，德银那边很爽快就答应了。
我就把这个case简单的梳理了一下，然后又和Chris导师赶紧约时间。跟他go over了一下整体思路。Chris很快帮我有逻辑地整理了每一个分析点，对我来说特别有帮助，感觉事半功倍。而且他还建议我找其他同学帮我proof reading一下，避免语法错误，给别人不专业的印象。
第三轮：终面

这次又是onsite。面试官有解释说之前的那个case不是特别重要，主要想看我对这个行业的兴趣和了解到什么程度。
这一轮面试也是主要看我个人对这个行业，公司以及领域的理解。以及我之前的经历能体现出什么能力和品质。
Wells Fargo面试流程

第一轮：电话面试

整体偏behavioral：

    Talk about a time you had a conflict with a team member and how you resolved it 
    What interests you in this job? 
    Why did you choose Wells Fargo?  
    Tell us about a time when you had to make a difficult decision at work without consulting management.  

第二轮：面试车轮战

面了两个VP，两个manage，还有一个associate，真是车轮战。面到最后感觉大家都挺累的。问题也都比较模式化。但氛围不那么严肃，偏聊天。
面试结束他们问我能不能给一个我的work sample。那时我也没时间准备，就把德银的那个case study分析发给他们了。结果当天下午就给我offer了。

：1) 12月中旬电话面试： 自我介绍，介绍一个自己的项目，一些基础数据分析建模的问题，例如：how to detect and deal with outliers? 询问一些技能和知识的基本掌握情况， 例如：会什么编程语言？说一下R与Python的区别。2）1月9-10日，现场面试。1月9日上午：两小时笔试，考查统计学知识，线性代数，基础data cleansing，Monte Carlo Simulation。1月9日下午：与两位部门面试官面谈。内容：10 分钟纯口头表述的presentation，介绍一个自己的项目；20分钟回答面试官就刚刚的presentation内容提出的问题。1月10日：将近一小时的行为+技术面试。 


1. What is random number? 如果你有一堆random numbers， 你会如何说服你的客户它们是 random 的。
2. Describe all the steps to build a predictive model. 还有一些follow up 的问题，比如如何 validate model, performance metric 之类的。
3. 你要去optimize a cost function, 你会用什么办法？（答 gradient descent）接下来问了用 gradient descent 的条件，用简单易懂的语言描述一下 gradient descent，为什么选择 gradient descent。你还知道什么别的办法 (答 Newton, Quasi-Newton)，随意聊了一下后两个。
4. Tell me about a ti
rock141，本帖隐藏的内容需要积分高于 188 才可浏览，您当前积分为 91。
查看如何攒积分 Click here for more info.
. 一个应用题，有一些实际背景，最后转化成的统计问题就是，给一个uniform generator, 如何得到 exponential random variable。
9. 一个应用题，和geometric distribution 相关，具体不太记得了。



技术问题问的不多，前面两个聊太久
面试过程主要是：
1， 简要说一下自己的学习和工作经历，讲一个自己做过的项目
2， 根据我讲的项目，他们提了很多关于建模和模型验证的问题，基本上是每个 interviewer 轮着问， 记得的问题：
1） 输入如果数据量非常大，该怎么办？我回答的是先 random sampling, 取一小部分数据进行分析和理解，然后建立一个小的模型，看看想法是否可行，然后再扩大模型，应用到整个data set 上。不知道回答的对不对-baidu 1point3acres
2） 模型的输出是怎么用的？ 用来判断医疗代码是不是正确的
3） 我现在主要用Matlab 和 Scala，问能不能用Python？ 当然能
4） 工作中有没有哪次感觉问题很容易解决，后来发现比想的复杂？怎么解决的？讲了一个自己项目中遇到的情况，这种情况很常见
5）我讲的项目是关于NLP 的，所以他们问了一些建模的细节问题
6） 问了一个SQL 相关的问题，我不懂，回答说组里有2个 data analyst，他们负责提供数据，我自己对这一部分不是很懂. 1point3acres
7） 现在公司这个组有些什么人，我跟他们工作上是什么相处的
记得的就这些了。

之后就进入一小时的他出题我答题环节，第一题是抛一个硬币，问连续出现2个H停止，期望要抛多少次。第二问接着第一问连续出现n个H停止，问期望。之后问linear regression的normal equation推倒，L1 penalty是啥，然后问了几个ode公式是否存在解，是否线性，然后问求integration的方法，最后考了一些C++的问题，指针和reference的区别，什么时候用哪个比较好….

Credit and Operational Risk Track master level
In 2 days

    Written Exam: 6 problems in 2 hour

        geometric distribution: 一道关于几何分布的应用题，关于客户第几个月会第一次违约，然后问这个模型现实中有哪些不合理的情况
        Linear Regression(X-X_bar的情况): assumptions, 求least square estimate of beta0, beta1, variance of beta1_hat 。然后如果变成binary classification的情况，assumption有什么变化？
        Binary Classification: response Ti~0 or 1, xi as predictor. Ti 服从参数为λ(xi)的exponential distribution，λ(xi)＝exp(beta0＋beta1*xi)。写出log likelihood和beta0 beta1的mle。然后这一个数值算法计算mle。如果beta1＝0，beta0的mle是多少？
        Matrix: 二阶矩阵A [[1,b], [b,1]], 一个特征值是b+1,求对应的特征向量。然后求另一个特征值和特征向量，然后计算A^1/2。
        Simulation: 有一个continuous uniform的generator(0,1)，如何生成1,2,3,4,5 discrete uniform的变量。然后给一个积分，如果用monte carlo求，写出算法步骤。
        Data Manipulation, R SAS or Python:给三张表，先join两张，然后filter，然后再join第三张，groupby计算，最后orderby。

    Presentation: A 10-minute oral presentation of one of your projects. To entirely non technical person. Cant use any visual aids(no slides, no whiteboards).
    Face-to-face interview:one hour. 一开始说是technical and behavioral, 结果几乎全是bevavioral 和 一些软technicalg(很general的问题，懵逼)

        Behavioral

            Introduce education
            Strength and weakness
            One time learn new tools
            One task you thought easy at first and turned out to be hard
            Challenging work
            因为过程中我提到了实习的项目，所以跟进问了不少项目的细节
            总结：整个behavior部分的题目感觉和之前面经提到的类似，所以说明就是按照题库里来问的。然后我结合实习经历讲的，所以问了我很多工作的细节。从这里看出这个interview就是考察你解决实际问题的思路和能力（并不是technical的细节，而是从high-level讲述怎么解决实际问题）
        Techinical. From 1point 3acres bbs

            Example for two continuous Random Variable，uncorrelated but dependent
                这题的例子没想出来，没想到居然问这个，难受了。。。
            Spurious Correlation？
                这里我也被问蒙了，一开始没听懂spurious这个词
            Correlation and causation example
                感觉这题跟上一题差不多啊
            How to check causation
                这个确实以前没有好好想过，感觉自己说的有点乱，从这里开始已经有点懵了。
                然后就说build一个regression model再结合实际情况看
            How to determine causation from a
            rock141，本帖隐藏的内容需要积分高于 188 才可浏览，您当前积分为 91。
            查看如何攒积分 Click here for more info.
            rate. 其实后来经一位同学提醒，对同一指标（比如性别）不同组的人做t-test是比较好的。但是当时我就压根没往这块想。。。
        好像还有一些但是不记得了，总之最后都是些这种风格的问题，然后就是问他们问题。

Summary：总的来说，笔试比较正常，考察的都是之前说好的东西。presentation比较友善，好好准备一下应该问题也不大。就是最后这个interview，说好的technical，结果是这样的technical，我以为会像之前面经说的有很多tricky的probability的题，前一晚还在拼命看，结果几乎全是behavioral和high-level的题，没有什么计算的细节，更多的是考察解决实际问题的思考模式。有一点想吐槽的是，我在面试的时候，感觉后面的每一个问题，都可以扯好久，比如解释变量的重要性，她也不告诉我用的什么模型，那岂不是疯狂的分类讨论，然后对各种情况还可以讨论得很多。就感觉，猛地一被问这种问题，要说的好多，结果一下子不知道从何说起。
不过，这也给我提了个醒，这种high-level的问题，其实平时也应该准备起来的。不要觉得自己随口就能说好。继续加油吧！希望对大家有用，求大家加米呀！（加米不耗你自己的米的！）

1. 介绍自己，做的research，PhD thesis的大致内容
2. Behavior question: when you realize your research has been fully investigated by other people, what will you do?
3. briefly introduce the procedure of data analyzing (research project, internship project 都行)
4. how to handle missing value: 1. assumptions? 2. techniques
5. Overfitting issue: 1. how to identify? 2. how to solve
6. Random for
rock141，本帖隐藏的内容需要积分高于 188 才可浏览，您当前积分为 91。
查看如何攒积分 Click here for more info.
m forest, etc.

1. 介绍自己的PhD research
2. Describe the situation that you solved a problem that was more complicated than your first thought.
3. brownian motion
4. coding: 算一个很大的流数据的平均值， 告诉面试官自己的想法就可以了
5. Monte Carlo-baidu ????
6. 一个人筛子的问题， 具体不太记的了

（1） 你课外有没有什么项目？ （我说了我做的kaggle，整个machine learning 的流程。 之前和microsoft的一些比较牛的engineer 一起做kaggle, 学了很多挺实用的，ensemble, meta feature这些东西）也知道了一些machine learning pipeline, 一边画一边讲给interviewer 听，感觉他挺满意的。
（2） case study, 给了一个nlp的case。 我也是讲的比较细致，把target的构思，text representation (bag of words, TF-IDF), distance measurement (euclidean, cosine similarity), clustering building, initialisation (local and global optimal), hierachical clustering, 这些都讲了一遍。我感觉重点是一定要有逻辑，知道自己每一步在做什么，要达到什么目的, 有哪些pitfall 要注意，说专业术语的时候，再用通俗的话解释一遍。总之就是walk through this whole process， 然后可以和面试官讨论，你为什么要这样做（比如euclidean 还是 cosine similarity)， 询问他的意见。 就像他和你在一个团队里面工作一样， 把你当成他的同事，而不是面试官 （也就是说， 不要怕说错，要想着怎么把这个项目做好， 并且你对这个项目很有热情）。
（3） case study, 一个A/B testing的case。给了一个图，横轴是时间，纵轴是每天设备报错的数量，比较test 和control。 先建模预测control group, 在用signficant test比较折线图下的面积。 注意纵轴是每天出错数，所以要累加起来。
（4） case study, 这个case 我答得不好，乱说一通，可能题木理解错了。 给了一个真实的场景，条件也没给全（让我问他），让设计一个分析流程。题主这种开放性的问题非常非常差（从小到大考试哪有条件没给全的，这题有错吧，跳过不做。。。。）

    面试准备。

    自我介绍。我看过一个YouTube的视频，关于how to introduce yourself。她介绍说，这个自我介绍一定要像坐电梯的一样：你是谁--> 你能做什么-->你为什么qualify for this job。一步一步升华。
    因为这个岗位面向phd，interviewer会问你resume上面的research project。面试不同公司，interviewer的感兴趣的project会不一样。（我这次amazon和wellsfargo两位面试官，口味就很不一样）。一定要对自己的project有一个whole story。不要讲很多technical details，可能面试官也不是很理解，一定要告诉他们这个project可以干嘛，然后给一些high level的。methodology。
    一定要复习很统计的知识。大致模块分为 a）logistic regression（银行很喜欢这个）、b）survival analysis 、c）一些基础的machine learning的知识，类似它的优缺点。我自己还准备了anova，虽然没用到，但是准备着，心里很安心。具体来说，举个例子，什么是linear regression，怎么检验它的assumption；false positive；true negative是什么等等。


1. 描述自己的research
2. 说一个modelling的经历
3. 为啥想干quant
4. 说一个你科研的创新点
5. 说一个你以前的实习经历
6. geometric distribution
7. martingale
8. moving average
9. 没听明白啥意思。说有一个lognormal的随机变量X，X有一个参数是e，Y是X的函数，但是你并不知道Y的表达式，让你求dE(Y)/de。

公司食堂: No free food, paid options ok

人员流动-你的director组内最近半年有多少人离职: <5%
周围做决定的人一般是谁: Business partner
大部分同事上班状态: Rest and vest
你身边政治斗争如何: Some, but tolerable

当初为什么选择来这家公司？: work life balance
如果已经离开这家公司，为什么选择离开？:

具体工作，组，tech stack等:
DS

最满意的是什么:
work life balance, work from home

最不满意的是什么:
promotion is slow

你对这份工作最看重什么:
experience

compatitive package against FLAG, work life balance is excellent, usually go to office once or twice a week, can work 2 hours a day if coding quickly,more and more Chinese coming, lower housing price, business suite if working in downtown, PTO is more than 30 days a year, only concern is that promotion is too slow.

1. 介绍一下自己的research
2. 介绍自己的编程能力
3。学过什么统计，数学计算的课程
以及技术问题：


9月份海投的wells 银行quant analytic职位，以为就石沉大海了。上周五收到邮件邀请面试，给我的是capital market track。一查，我居然没申请这个position，无语，就当聊天好了。
电话打进去M开头MD接听，法国数学phd，好吓人，很nice。还跟我确认了下申请的是capital 还是 risk。先问了教育背景，工作背景，paper的内容，有没有具体modeling project。

BQ问得是讲述一次你比别人要先发现问题的经历。这些接近25min，她也想快点进入tech问。。。

tech 1. 有一个dice，问平均投几次能够出现6个面。
        2. 
        
        
 1. Describe yourself
2. 你学过什么数学，统计学，计量模型
3. MLE和LSE
4. Monte Carlo模型
5. 从统计学，ML，经济学，从你的专业角度解释什么是模型. 1point3acres
6. 描述一个project，你干什么role，过程，结果
7. 描述你会的软件，一个数据分析项目       
