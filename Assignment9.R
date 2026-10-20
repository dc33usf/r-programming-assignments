library(ggplot2)
library(lattice)
mydata <- read.csv("Boston_df.csv")
head(mydata)

#Base R Graphics
plot(mydata$lstat,mydata$medv,
     main = "Poverty Population v. Median Home Value",
     xlab = "Poverty Population(In percent)",
     ylab = "Median Home Value(In thousands)")

hist(mydata$medv,
     main = "Distribution of Home Value in Boston",
     xlab = "Home Value (In Thousands)")

#Lattice Graphics
xyplot(medv ~ rm | factor(chas),
       data = mydata,
       main = "Lattice: Home Value vs. Rooms by River Location")

bwplot(medv ~ factor(chas),
       data = mydata,
       main = "Lattice: Home Values by River Location")

#ggplot Graphics
ggplot(mydata, aes(x = rm, y = medv, color = factor(chas))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: Home Value vs. Rooms by River Location")

ggplot(mydata, aes(medv)) +
  geom_histogram(binwidth = 5) +
  facet_wrap(~ chas) +
  labs(title = "ggplot2: Home Value Distribution by River Location")
