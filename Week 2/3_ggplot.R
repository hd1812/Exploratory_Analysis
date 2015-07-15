####ggplot2 -- Grammar of Graphics

##The Basics: qplot() -- hides what goes underneath
##Core function ggplot() -- more flexible

##Example Dataset
library(ggplot2)
str(mpg)

##qplot
qplot(displ, hwy, data = mpg) ##qplot(x,y,data)
qplot(displ, hwy, data = mpg, color = drv) ##specify color
qplot(displ, hwy, data = mpg, geom = c("point", "smooth")) ##add a geom
qplot(hwy, data = mpg, fill = drv) ##histogram
qplot(displ, hwy, data = mpg, facets = . ~ drv) ##Facets, look at separate groups in diff panels.left of ~ row, right of ~ column
qplot(hwy, data = mpg, facets = drv ~ ., binwidth = 2)


