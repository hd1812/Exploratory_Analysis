####Quiz 2
##Q2
library(nlme)
library(lattice)
xyplot(weight ~ Time | Diet, BodyWeight)

##Q7
library(datasets)
data(airquality)
airquality = transform(airquality, Month = factor(Month))
qplot(Wind, Ozone, data = airquality, facets = . ~ Month)
