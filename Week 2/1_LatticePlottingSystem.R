####Week 2 Lattice Plotting System

##The lattice plotting system is implemented using the following packages
##lattice package:  xyplot, wplot, levelplot
##grid package: lattice system buils on grid
##Lattice plotting system do not have two-phase aspect, it is done by one function call

##Lattice Functions
##xyplot: scatterplots
##bwplot: box and whisker plots
##histogram: hist
##stripplot: like a boxplot but with actual points
##dotplot: plot dots on violin string
##splm: scatterplot matrix
##levelplot, contourplot: plot image data

##example
xyplot(y~x|f*g,data)
## left of ~ :y-axis, right of ~: x-axis
##f and g are conditioning variable
##second argument is the data frame or list

##Simple Lattice Plot
library(lattice)
library(datasets)
xyplot(Ozone~Wind,data=airquality)
##convert month into factor
airquality<-transform(airquality,Month=factor(Month))
xyplot(Ozone~Wind|Month,data=airquality,layout=c(5,1))

##Mechanism
##Lattice plot create an object of class trellis and print on screen
##While base graphic function plot directly on graphic device