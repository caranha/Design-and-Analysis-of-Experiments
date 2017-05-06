# Review of the Previous class

Let's quickly review the first two classes of this course. 

The goal of this course is to train you into proper experimental and scientific thinking and methodology, so 
that you can prepare, execute, and analyse data resulting 
from an experiment. 

We discussed what is science, and how it depends on a 
series of factors: The role of ideas and inspirations, 
the importance of experimentation and the scientific 
method, and the part played by the scientific community,
colleagues, revisors and even rivals.

In the Scientific community, we focused on the role of 
experimentation -- which means, the active gathering of 
data by the scientist (or scientists). 

However, there are many factors which influence this data
gathering process.

Some of these factors are part of our scientific question.

For example: How does the presence of a policeman affects
the number of accidents in a street?

Other factors are not part of our question.

For example: How does youtube running on your computer 
affects the running time of your algorithm.

When you prepare an experiment, you must try to take 
into account BOTH kinds of factors, and understand
how much each of those factors contribute to your observed 
results.

Therefore, a rigorous experimental design, or experimental
preparation step is necessary.


## Current Class Intro

Starting today, we will take our class to a more technical
level.  In other words, we will study how we can analyse 
the data obtained from an experiment in a numerically 
or statistically sound manner.

Today we will start with the basics: How to characterize 
the data, both in term of specific values, and the range 
of possibilities for these values.

If you start to get lost during the class, make sure 
to stop and raise your hand! Concepts discussed today 
will be used for the entire course.

# Campelo Lectures
## Lecture 03 -- Point Estimators

### Introductory Quote

Peter B. Medawar: Biologist who worked on Graft Rejection 
and Organ Transplant. Nobel Prize Medicine 1960. Wrote 
a book called "Advice to a Young Scientist", a book on
practical advice, and also consideration on rationalism 
and the scientific method.

### Idea of sampling distributions:

First, we don't know the entire data. In most cases, we 
are always in the case where we are taking the balls out 
of the pool. And we will never know exactly what is in 
the pool.

Because of this, every measure that we make of an 
experiment, has an error. So if you do an experiment 
once, it has an error - how much it can change if you 
do the experiment again. If you do the experiment ten 
times, and take the mean, the mean also has an error - 
how much it can change if you do the experiment ten 
more times. And so on.

So every measure that we make about a quantity in an 
experiment is an "estimator", and has a degree of 
variability.

### Usual Cases: 

Give examples of the estimators and the possible errors. 

Bias of the estimator speaks of the method. Even if the
estimator is umbiased, there may be errors. But we 
expect that if we repeat the estimation, the total 
values will be around the true value, and not around the bias.

Multiple estimators: Show how it is possible to have 
multiple estimators of the mean (eg. maximum minus 
minimum).

Sampling distributions of means tends to be normal 
because of the CLT.