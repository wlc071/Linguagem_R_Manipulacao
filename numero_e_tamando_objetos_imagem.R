#### numero e tamanho de objetos #####

remove(list = ls())
library(EBImage)
setwd("~/Linguagem R/arquivos")
im = readImage("fig.jpg")
plot(im)
im=round(im,0)
im2=bwlabel(im==0)
computeFeatures.shape(im2)