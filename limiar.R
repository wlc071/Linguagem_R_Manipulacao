remove(list = ls())
library(EBImage)
setwd("~/Linguagem R/arquivos")
im = readImage("ex1.jpg")
plot(im)

display(im@.Data[,,1])
display(im@.Data[,,3])
display(im@.Data[,,2])

#Limiar
display(im@.Data[,,1] > 0.5)
