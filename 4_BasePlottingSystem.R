####The base plotting system in R

##Core plotting and graphics in R
##graphics: contains plot, hist, boxplot, etc
##grDevices: contains all code implementing  various graphics devices, PDF, PostScript, PNG, etc

##The lattice plotting system is implemented using the following packages:
##lattice: contains code for producing graphics: xyplot, bwplot, levelplot
##grid: lattice package builds on top of grid, we seldom call functions from the grid packages directly

##Base Graphics
##Process:
##1
##--Initialising a new plot
##--Annotation an existing plot
##Call plot(x,y) to launch a graphic device
##The base graphics system has many parameters that can set and tweaked, documented in ?par

##Example:
library(datasets)

##hist
hist(airquality$Ozone)

##scatter
with(airquality,plot(Wind,Ozone))

##boxplot
airquality<-transform(airquality,Month=factor(Month))
boxplot(Ozone~Month,airquality,xlab="Month",ylab="Ozone (ppb)")

##Some important base graphics parameters
##pch: plotting symbol, default to be open circle
##lty: the line type, default to be solid
##lwd:line width
##col: plotting color
##xlab: character string for x-axis label
##ylab: character string for y-axis label

##Some important patameters set in par() function --global patameters
##las: orientation
##bg: background color
##mar: margin size
##oma: the outer margin size
##mfrow: number of plots per row
##mfcol: ...per colomn

##To see default value: e.g. par("bg") par("mar")