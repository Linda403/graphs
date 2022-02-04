# Lab 1

#install.packages("astsa")
library(astsa)

data("chicken")

View(chicken)
# to have a look at the actual numbers

#q1
mean(chicken)

#q2
median(chicken)

#q3
sd(chicken)
summary(chicken)

#q4
min(chicken)
max(chicken)
?quatile # checking the help file of this function
quantile(chicken)

#q5
# IQR shows the range of your data, the difference between sd and IQR
#sd is blown out of proportion due to the outliers
#IQR will give a more general overview 
# IQR= Q3-Q1
# 96.04 - 72.42= 23.62
IQR(chicken)

#q6
#boxplot show the range in data 
#no shown outliers in the boxplot
#symmetric, relatively evenly distributed
?boxplot # checking the help file of this function
boxplot(chicken, main="Boxplot for price of chicken")

#q7
# frequency distribution
# bimodal distrbution 
hist(chicken, xlab="US cents per lbs of chicken", main="Histogram for price of chicken")

#q8
# the time plot has a general up-sloping trend
# general increase can be explained by inflation
# seasonality/ periodic component 
# business cycle, around 5 years 
# price of chicken increases over time (2005-2015)
# one major dip in prices around 2006 
# this is a classical decomposition 
# the dips in prices may be caused by competition
# in this case the competition would be 
# pork/steak/fish

# bird flu, lots of producers were required to kill their stock
# mad cow disease-> chicken to be more favored

plot(chicken, ylab="cents per pound")
