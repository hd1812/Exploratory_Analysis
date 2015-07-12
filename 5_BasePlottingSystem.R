####Base Plotting Functions
##plot
##lines
##points
##text
##title
##mtext
##axis

##Examples:
##Base plot with annotation
with(airquality,plot(Wind,Ozone,main="Ozone and Wind in New York City"))
with(subset(airquality,Month==5),points(Wind,Ozone,col="blue"))
with(subset(airquality,Month!=5),points(Wind,Ozone,col="red"))
legend("topright",pch=1,col=c("blue","red"),legend=c("May","Other Months"))

##Base Plot with Regression Line
with(airquality,plot(Wind,Ozone,main="Ozone and Wind in NeW York City",pch=20))
model<-lm(Ozone~Wind,airquality)
abline(model,lwd=2)

##Multiple Base Plots
par(mfrow=c(1,3),mar=c(4,4,2,1),oma=c(0,0,2,0))
with(airquality,{
  plot(Wind,Ozone,main="Ozone and Wind")
  plot(Solar.R,Ozone,main="Ozone and Solar Radiation")
  plot(Temp,Ozone,main="Ozone and Temperature")
  mtext("Ozone and Weather in New York City",outer=TRUE)
})

##Summary 
##Base plot are created by calling successive R functions
##1.Creation of a plot
##2.Annotation of a plot