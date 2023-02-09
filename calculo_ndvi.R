install.packages("raster")
library(raster)

red=rasterImage()
nir=rasterImage()

ndvi = (nir - red)/(nir + red)

plot(ndvi)