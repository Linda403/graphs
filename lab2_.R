library(readxl)

?readxl

data=read_excel("Lab2.xlsx", col_names = T)

View(data)

dim(data)

head(data, 3)
tail(data, 3)

attach(data)
# allows to refer to the direct column names

boxplot(Employee_Turnover~Reengineer)
# if it works turn over should go down
# however, the boxplot shows the opposite
# after the implementation of changes turnover increased

pre.turnover = subset (Employee_Turnover, Reengineer=="Prior")
# == is comparing the data (if it equals)

post.turnover = subset(Employee_Turnover, Reengineer=="Post")

t.test (pre.turnover, post.turnover, alternative= "greater")
# not statistically significant
# p-value = 0.924


############

boxplot(TRFF~Reengineer)


pre.trff = subset (TRFF, Reengineer=="Prior")
post.trff= subset(TRFF, Reengineer=="Post")

mean(pre.trff)
sd(pre.trff)

mean(post.trff)
sd(post.trff)


t.test (pre.trff, post.trff, alternative= "greater")
# p-value = 0.001137, statistically significant 
# the new implementation worked 



detach(data)
# important to close the loop, in case you have
# duplicates of the column names
# this attach function is good for
# smaller data sets 


