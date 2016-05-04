Lecture 2016/05/06
==================

# Pre-Lecture Notes

Did Anyone do anything cool during Golden Week?
(Visit to Kurashiki)

## Previous Class Review

Let's quickly review the first two classes of this course. 

The goal of this course is to train you into proper experimental 
and scientific thinking and methodology, so that you can prepare, 
execute, and analyse data resulting from an experiment. 

We discussed what is science, and how it depends on a series of 
factors: The role of ideas and inspirations, the importance of 
experimentation and the scientific method, and the part played by 
the scientific community, colleagues, revisors and even rivals.

Then we focused again on the role of experimentation: What are the 
types of experiments, and what are the components of experiments. 
We discussed a few experiments, such as choosing what kind of process
to make wine, how to test the quality of shoes for soccer, or how 
to compare two algorithmic processes. We talked about factors, 
levels, and experimental design in simple terms.

Some of you asked about "Historical Experiments". In fact, as computer
scientists we often think of experiments as something we prepare to
obtain new data. Fortunately, I found this week a very good example 
of a Historical experiment on the National Geographic magazine. Please
read the following two links:

- Article on the [National Geographic](http://voices.nationalgeographic.com/2016/04/26/lake-suwas-shinto-legend-and-the-oldest-lake-ice-record-on-earth-what-it-tells-us-about-climate-change-and-variability/)
- [Full paper](http://science.sciencemag.org/content/289/5485/1743.full)

In this paper, a group of scientists observe historical notes from
four centuries to reinforce our model of human based-global
warming. They investigate the data of Japanese months, who every year
marked when a certain lake froze, and if it froze at all, since 1600.

I will leave you to read the paper, but their main work was to
understand and analize the data, and decide whether and how much of it
was reliable, what was the associated error with the data, and what
sort of conclusions could be drawn from it.

## Current Class Intro

Starting today, we will take our class to a more technical level.  In
other words, we will study how we can analyse the data obtained from 
an experiment in a numerically oor statistically sound manner.

Today we will start with the basics: How to characterize the data,
both in term of specific values, and the range of possibilities for 
these values.

If you start to get lost during the class, make sure to stop and raise
your hand! Concepts discussed today will be used for the entire
course.

# Campelo Lectures
## Lecture 03 -- Point Estimators

### Introductory Quote

Peter B. Medawar: Biologist who worked on Graft Rejection and Organ Transplant.
Nobel Prize Medicine 1960. Wrote a book called "Advice to a Young Scientist", 
a book on practical advice, and also consideration on rationalism and the 
scientific method.


### Idea of sampling distributions:

First, we don't know the entire data. In most cases, we are always in the 
case where we are taking the balls out of the pool. And we will never know
exactly what is in the pool.

Because of this, every measure that we make of an experiment, has an error. 
So if you do an experiment once, it has an error - how much it can change if 
you do the experiment again. If you do the experiment ten times, and take the 
mean, the mean also has an error - how much it can change if you do the 
experiment ten more times. And so on.

So every measure that we make about a quantity in an experiment is an "estimator", 
and has a degree of variability.

### Usual Cases: 

Give examples of the estimators and the possible errors. 

Bias of the estimator speaks of the method. Even if the estimator is umbiased, 
there may be errors. But we expect that if we repeat the estimation, the total 
values will be around the true value, and not around the bias.

Multiple estimators: Show how it is possible to have multiple estimators of 
the mean (eg. maximum minus minimum).

Sampling distributions of means tends to be normal because of the CLT.


## Lecture 04 -- Statistical Intervals

### Stephen Jay Gould


# Post-Lecture Notes
## Don't Procastinate on your final project!

For the final group, you need to set up multiple tasks. 
The earlier you begin them, the earlier that you can finish.
- Form a group
- Decide a topic
- Do an exploratory analysis
- Prepare the experimental design
- Run the experiments
- Analyse the data
- Prepare the Presentation/Report
