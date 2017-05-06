# Example Code for Week 3 -- Basic Statistics

### Chapter 3: Point Estimators

# Example 1: A pool has 400 plastic balls, 200 are black (color 0), 100 are blue (1), 100 are red (2)
cat("Example 1: Ball Pen:\n")
pool <- c(rep(0,200),rep(1,100),rep(2,100))

s <- sample(pool,10)    # Take a sample of 10 balls from the pool
print(sum(s == 0) / 10) # What is the proportion of black balls in this sample?

s <- sample(pool,50)    # Taking a bigger sample
print(sum(s == 0) / 50) # What is the proportion of black balls is this sample?

samples <- lapply(1:10,function(x) sample(pool,10))      # Now we take 10 samples of 10 balls each
props   <- sapply(samples,function(x) sum(x == 0) / 10)  # This is the proportion of black balls in each sample
print(props)

print(sum(props) / length(props))                        # Estimating the proportion of the population from the mean proportion of the samples
print(mean(props))                                       # This line is equivalent to the above one

print((1 / (length(props) - 1)) * sum((props - mean(props)) ** 2)) # Variance of the sample
print(var(props))                                                  # Same thing

# Example 2: A cable factory produces cables with a resistance following a normal distribution with mean 50 ohms, and stand deviation 2 ohms:
cat("\nExample 2: Cable Factory\n")
cables <- rnorm(2000,50,2)
cable.sample <- sample(cables,25)   # Sample of 25 cables
print(mean(cable.sample))
print(sd(cable.sample))

cable.samples <- lapply(1:25, function(x) sample(cables,25)) # 25 samples of 25 cables
cable.samples.means <- sapply(cable.samples, mean)
print(mean(cable.samples.means))                             # mean of the sample means
print(sd(cable.samples.means))                               # standard deviation of the sample means

# Example 3: Uniform distribution
cat("\nExample 3: Uniform Distribution\n")
dice.rolls <- floor((runif(2000) * 20) + 1)
print(sum(dice.rolls == 20))         # number of critical hits
dice.sample300 <- sample(dice.rolls,200)
dice.sample20  <- sapply(1:15, function(x) mean(sample(dice.rolls,20)))

cat(paste("Mean of 300 rolls:", round(mean(dice.sample300), digits = 2), 
          "; SD of 300 rolls:", round(sd(dice.sample300), digits = 2),"\n"))
cat(paste("Mean of 15 means of 20 rolls:", round(mean(dice.sample20), digits = 2), 
          "; SD of 15 means of 20 rolls:", round(sd(dice.sample20), digits = 2),"\n"))

### Chapter 4: Statistical Intervals:
cat("\nIntervals: \n")

# alpha is (1 - desired confidence)
confidence.interval <- function(values, alpha = 0.05) {
  v.mean <- mean(values)
  v.sd <- sd(values)
  v.N <- length(values)
  upper = (v.sd / sqrt(v.N)) * qt(1 - (alpha / 2), v.N - 1)
  lower = (v.sd / sqrt(v.N)) * qt(alpha / 2, v.N - 1)
  
  return (round(c(v.mean + lower, v.mean + upper), digits = 3))
}

# alpha is 1-confidence, prop is the enclosed proportion
tolerance.interval <- function(values, alpha = 0.05, prop = 0.9) {
  v.mean <- mean(values)
  v.sd <- sd(values)
  v.N <- length(values)
  
  upper = v.mean + v.sd*(sqrt(((v.N - 1) * (v.N + qnorm(alpha/2)**2)) / (v.N * qchisq(prop, v.N - 1))))
  lower = v.mean - v.sd*(sqrt(((v.N - 1) * (v.N + qnorm(alpha/2)**2)) / (v.N * qchisq(prop, v.N - 1))))
  round(c(lower, upper), digits = 3)
}

prediction.interval <- function(values, alpha = 0.05) {
  v.mean <- mean(values)
  v.sd <- sd(values)
  v.N <- length(values)
  
  upper = qt(1 - (alpha / 2), v.N - 1) * v.sd * sqrt (1 + (1 / v.N))
  lower = qt(alpha / 2, v.N - 1) * v.sd * sqrt (1 + (1 / v.N))

  round(c(v.mean + lower, v.mean + upper), digits = 3)
}

print(paste("95% Confidence interval of the mean for a 25 cable sample [", 
            confidence.interval(cable.sample)[1], 
            confidence.interval(cable.sample)[2], 
            "]"))

print(paste("95%-confidence 90% Tolerance interval from a 25 cable sample [", 
            tolerance.interval(cable.sample)[1], 
            tolerance.interval(cable.sample)[2], 
            "]"))

print(paste("95%-confidence prediction interval interval from a 25 cable sample [", 
            prediction.interval(cable.sample)[1], 
            prediction.interval(cable.sample)[2], 
            "]"))
