####Week 2 Lattice Panel Functions

set.seed(10)
x<-rnorm(100)
f<-rep(0:1,each=50)
y<-x+f-f*x+rnorm(100,sd=0.5)
f<-factor(f,labels=c("Group 1","Group 2"))##convert f to factors
xyplot(y~x|f,layout=c(2,1))

##add median line
xyplot(y~x|f,panel=function(x,y,...){
  panel.xyplot(x,y,...)           ##First call the default panel function for 'xyplot'
  panel.abline(h=median(y),lty=2) ##Add a horizontal line at the median
})

##add regression line
xyplot(y~x|f,panel=function(x,y,...){
  panel.xyplot(x,y,...)           ##First call the default panel function for 'xyplot'
  panel.lmline(x,y,col=2)         ##Add a horizontal line at the median
})

##Note that functions in base system cannot be used here
##Most properties like margins and spacings are automatically handled

