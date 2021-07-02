###############################################
# R GETTING STARTED
# following the text "R for Data Science" (R4DS)
###############################################
# install/load packages

# packages need to be installed once
install.packages("tidyverse")

# packages need to be loaded for each session
library(tidyverse)
###############################################
# mathematical ops
2+4

# build a sequence: from, to, by
vals <- seq(-pi, pi, 0.1)

# show the data type
class(vals)

# NOTE: the data type is the type of the elements,
# and not the type of the container

# vectorized operations
sin(vals)

###############################################
# basic plotting
plot(vals, sin(vals))

## TRY FOR YOURSELF ##
# 1) Create your own sequence, and plot the tangent
# of this sequence


###############################################
# look at mpg dataset from ggplot2
mpg

# get a concise overview of schema
str(mpg)

# summarize dataframe
summary(mpg)

# summarize a column
summary(mpg$cty)

###########################################################
##  TRY FOR YOURSELF ##
# 2) summarize a different column from mpg

# 3) compute the mean of a quantitative variable from mpg
###########################################################

# first few records
head(mpg)

# last few records
tail(mpg)

# first and last few records stacked
rbind(head(mpg), tail(mpg))

# tabulate a categorical variable; gets frequency at each level
table(mpg$model)

?table

# engine size
mpg$displ

# data type
class(mpg$displ)

# get help on mpg
?mpg

# plot engine size vs fuel efficiency on hwy
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))
# inverse relationship - efficiency generally falls with engine size

# show the model as various colors
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color=model))

##  TRY FOR YOURSELF ##
# 4) Rebuild the plot using y = cty

###############################################
# Ch2: Workflow Basics

# assignment operator (use Alt-minus sign as shortcut)
y <- 1

class(y)
length(y)

# naming objects
# 1. start with letter
# 2. contains letters, numbers, _, ..
# 3. snake_case works well for multiple words
# 4. objects are case sensitive

# removing objects
rm(y)
y

# calling functions
# function_name(arg1 = val1, arg2 = val2, ...)
seq(-10,10)
?seq

seq(-10, 10, 2)

# assign sequence to variable
s1 <- seq(-10, 10, 2)

# can assign and print by wrapping with parenthesis
(s1 <- seq(-10, 10, 2))

# NOTE: all parentheses and quotes need to be paired
# if not paired, R will show +
# try running this:
s1 <- seq(-10, 10, 2
          
# now fix it!