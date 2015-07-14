####Graphic Device on R

##--window on your computer
##--PDF/PNG/JPEG/SVG file device

##Process:
##--explicitly launch a graphic device
##--call a plotting function to make a plot
##--annotation
##--explicitly close the graphic device

##Two basic types of file devices: vector and bitmap devices
##vector formats: pdf,svg(XML-based),win.metafile(Windows metafile format),postscript
##Bitmap format (specify in pixels,good with large number of points):
##png(do not resize well, lossless compression),jpeg(lossy compression),tiff(support lossless compression),bmp (native bitmap format in windows)

##Possible to open multiple graphics devices
##Plot can only occur on one graphic at a time
##dev.cur()--current active device
##dev.set()--change active graphics
##dev.copy()--copy a plot from one device to another
##dev.copy2pdf--specifically copy a plot to a PDF file



