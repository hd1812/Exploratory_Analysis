####More explanations on ggplot2

##Basic components of ggplot2
##A data frame
##aesthetic mappings: how data are mapped to color, size
##geoms: geometric objects like points, lines, shapes.
##facets: for conditional plots.
##stats: statistical transformations like binning, quantiles, smoothing.
##scales: what scale an aesthetic map uses (example: male = red, female = blue).
##coordinate system

##Processes
##Building up layers, make a collection of objects
##Specify plot function to print to screen

##Add more layers such as smooth, facets, labels(xlab(),ggtitle(),labs())
##For global properties, use theme(), 
##e.g theme(legend.position="none")
##theme_gray(),theme_bw(). e.g theme_bw(base_family="Times")
##modify aesthetics
##e.g aes(color=bmicat)    color="steelblue"##assigning to constant/variable
##labs(title=""+labs(x=expression(""),y=("")))
##geom_smooth()

##Axis Limits
##g+geom_line()+ylim(-3,3)    outlier missing
##g+geom_line()+coord_cartesian(ylim=c(-3,3)) outlier included


