---
layout: post
title: "Udacity Interview Course"
date: '2020-11-3'
tags:
 - Interview
 - DataScience
 - MachineLearning
 - Leetcode
---
### 1. What IS Data Science?

Data science combines several disciplines, including statistics, data analysis, machine learning, and computer science. 

    One important piece of advice for your job search is to read data science job   descriptions carefully. This will enable you to apply to jobs you’re already qualified for, or develop specific data skill sets to match the roles you want to pursue. 

### 2. Types of Data Science Jobs

* The Data Analyst: Your job might consist of tasks like pulling data out of SQL databases, becoming an Excel or Tableau master, and producing basic data visualizations and reporting dashboards. You may on occasion analyze the results of an A/B test or take the lead on your company’s Google Analytics account.

* The Data Engineer: Since you’d be (one of) the first data hires, heavy statistics and machine learning expertise is less important than strong software engineering skills. Mentorship opportunities for junior data scientists can be less plentiful at a company looking to leverage rapidly increasing amounts of data.

* The Machine Learning Engineer: Often focus more on producing great data-driven products than they do answering operational questions for a company. There are a number of companies for whom their data (or their data analysis platform) is their product.  This is probably the ideal situation for someone who has a formal mathematics, statistics, or physics background and is hoping to continue down a more academic path.

* The Data Science Generalist: The company you’re interviewing for cares about data but probably isn’t a data company. Some of the most important ‘data generalist’ skills are familiarity with tools designed for *big data* and experience with messy, ‘real-life’ datasets.

### 3. Interviews are Conversations

Interview is not exam, ask questions to communicate and approach unknown questions as something you want to solve.

    Be confident.

   

### 4. STAR Method

Example: Describe an example when you had a disagreement with your coworker/manager. Why did it happen? How did you handle it?

*Situation*: "One day before we were going to launch a new feature, a new vulnerability was announced in vendor software we use. Patching the problem adequately meant sliding the already delayed schedule. Another team member and I disagreed about which took precedence, the security patch or the feature release. The marketing department had a lot riding on this deadline.”

*Task*: "We needed to decide which goal to pursue and work together as a team."

*Action*: "We decided to look into the details of each problem together. Clearly the deadline was important, but our users’ data might be at risk if we didn’t patch our system. I was tasked to research the security threat more closely, and I realized it did not apply to our users because none of them used that browser which had the vulnerability. So we could just post a message on our website about the browser."

*Result*: "We were able to release our product feature on time even while taking the time to work together to consider an important issue not everyone agreed with at the time."

### 5. Data Analysis Interview Practice 

*Describe A Project*: this is probably the most important question of the interview where you can examine an interviewee from start to end of a project to see (1). Can they describe the problem clearly; (2). How do they approach to solve the problem; (3). Knowing the tools standard for industry;

### 6. Free Throw Probability
One player with p = 2/3 of making a free throw with two chances or another one with p = 1/2 with three chances. Who is better?

    Clear Explaination matters!
    
### 7. SQL Question
Write SQL query to find the three vehicles with the most horse power that have least 6 cylnders.
|      Cars     |         |
| ----------    | --------|
|      Id       |  Int    |
|      Make     |  Char   |
|      Model    |  Char   |
|   No of Cyl   |  Int    |
|  Horse Power  |  Int    |

### 8. Coding
Given unsorted array of integers, find the indices of the largest of the difference

``` python
def find_max_diff(A):
"""
A: an unsorted array of integers
return the indices of the location that maximize the difference
"""
    diff = float('-inf')
    n = len(A)
    max_so_far = A[n - 1]
    
    for i in reversed(range(n - 1)):
	if A[i] > max_so_far:
	    max_so_far = A[i] 
        else:
	    diff = max(diff, max_so_far - A[i])
    return diff
```

### Design a Spam Classifier

Feature constructon: sender address, ip address, subject line, time + date, body, attachments, recipients, RE/FW
 
Feature selection: 

Choice of Algorithms: pros and cons, simple standard, ...

Evaluation

### Machine Learning Interview Practice

Example 1. Bayes' Theorem: The probability of an event $$A$$ conditional on another event $$B$$ is generally different from the probability of $$B$$ conditional on $$A$$. However, there is a definite relationship between the two,
	
$$ 
	\begin{align}
	P(A \mid B) = \frac{P(B \mid A) \, P(A)}{P(B)}
	\end{align}
	$$
 

Example 2. Detect Plagiarism

Example 3. Reduce Data Dimension

Current algorithm process a lot of data related to millions of pictures but performs slow. 
Consider fourier transform for images, which looks for frequencies of difference color patterns, and can dramatically reduce data size; What is the resulting effect of the transform. Also consider PCA ... What domain or fields any transformation apply?

Example 4. Describe Your ML Project
Data extraction, challenge, pipeline, Project of interest, Larger ecosystem, passion

Example 5. Explain How SVMs Work
when dataset not linearly separable, use kernel or different methods. 

Show teamwork by taking feedback nicely.


### Coding Interview

* Clarifying the Question: 

	  make sure you are solving the right variation of a problem and not wasting anyone's time
		
* Generating Inputs and Outputs
		
  	figure out input-output format
        
* Generating Test Cases

   	always consider edge cases, like null and empty cases, first
	
* Brainstorming
	
	  data structure matters!
	  
* Runtime analysis

         optimal algorithm or not by looking at big O analysis
	 
* Coding



* Debugiging

### Resources 

Websites:

    HackerRank: Website and community with programming challeges that you can go through for additional practice.
    Project Euler: This website has a ton of logic problems that you can practice writing coded solutions to.
    Interview Cake: Practice questions and some tutorials available.
    Interactive Python: Loads of tutorials on pretty much every topic covered here and many more, along with Python examples and concept questions.
    Topcoder: New practice problems every day, and some tech companies use answers to those problems to find new potential hires.
    LeetCode: Practice problems, mock interviews, and articles about problems.
    BigO Cheat Sheet: Summary of efficiencies for most common algorithms and data structures.

Online Courses:

    Intro to Algorithms Course on Udacity: The course you just completed is essentially a prerequisite of the Intro to Algorithms course. Intro to Algorithms is largely about graph algorithms—you likely won't need most of them for interviews, but if you're interested in graph algorithms this is a great next step!


Books

    Cracking the Coding Interview by Gayle Laakmann McDowell
    Introduction to Algorithms by Charles E. Leiserson, Clifford Stein, Ronald Rivest, and Thomas H. Cormen
    Programming Interviews Exposed by John Morgan, Noah Kindler, and Eric Giguere
    Algorithms, 4th Edition by Robert Sedgewick and Kevin Wayne
    Elements of Programming Interviews by Adnan Aziz

Github Repository (Collections of Problems)

   [The Coding Interview](https://github.com/mre/the-coding-interview)
   HTML5 Boilerplate Interview Questions

Blog Posts

   [Five Essential Phone Screen Questions](https://sites.google.com/site/steveyegge2/five-essential-phone-screen-questions)


### Self Practice: Behavioral Questions

We've organized a list of typical behavioral interview questions by high-level categories. Please use this resource to practice your answers independently. **Pay attention to the following questions:

    Do you use the STAR method?
    What is your tone of voice?
    Do your answer the question concisely or do you get off track?
    
1. Getting to Know You

    What motivates you at work?
    Describe what your preferred supervisor—employee relationship looks like.
    What two or three things are most important to you in your work?

2. Knowledge & Interests

    What do you think are the most pressing issues in this field?
    What challenges does this position present for you?
    What do you think it takes to be successful in this organization?
    What do you know about our company?
    
    	The candidate took initiative in researching the company.
    	The candidate understood and summarized the company’s mission effectively.
    	The candidate could have also mentioned specific roles within the company.
    	The candidate showed enthusiasm and the response was clear, concise and confident.
    	The candidate personalized the answer instead of just listing facts.


3. Readiness & Experience

    What is your greatest strength/weakness?
    Tell me about a problem you have encountered and how you dealt with it?
    
    	The candidate’s example was related to the position he is applying for (front-end).
    	The candidate highlighted positive qualities: he did not give up, solved his problem proactively, and was not afraid to ask for help.
    	The candidate could have quantified what success looks like.
    	The candidate was able to quickly show his ability to create an app and deal with scale (i.e. his answer showcased his talents).

    Tell me about a mistake you made and what you learned from it.
    What experience do you have in this field? How have you prepared yourself to switch fields?

4. Goals, Motivation & Values

    Why do you think you will like this field?
    Describe a time when you saw some problem and took the initiative to correct it rather than waiting for someone else to do it.
    Give me an example of a time you were able to be creative with your work. What was exciting or difficult about it?
    Tell me about a time you were dissatisfied in your work. What could have been done to make it better?

5. Teamwork

    Describe a time when you worked closely with someone who had a very different personality than you.
    Tell me about a time you faced a conflict while working on a team. How did you handle the conflict?
    Describe a time when you struggled to build a relationship with someone important.
    Tell me about a time you needed to get information from someone who wasn’t very responsive. What did you do?

6. Ability to Adapt

    Tell me about a time you were under a lot of pressure. What was the situation and how did you get through it?
    Describe a time when your team or company was undergoing change. How did it impact you, and how did you adapt?
    Tell me about your very first job. What did you do to learn the ropes?
    Tell me about a time you failed. How did you deal with this situation?

7. Time Management Skills

    Tell me about a long-term project that you managed. How did you keep organized and make sure everything was moving along as planned?
    Tell me about a time you set a goal for yourself. How did you ensure that you would meet your objective?
    Give me an example of a time you managed multiple responsibilities. How did you handle it?

8. Communication Skills

    Tell me about a time you successfully persuaded someone to understand your perspective at work.
    Describe a time when you were the primary “expert”. How did you ensure that everyone understood you?
    Describe a time when you could only use written communication to get your ideas across to your team.





