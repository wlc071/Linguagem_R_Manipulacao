rm(list = ls())
setwd("~/Linguagem R/arquivos")
library(EBImage)
im = readImage("im1.jpg")
plot(im)

#Plotar canais - RGB(1, 2 e 3)
display(im@.Data[,,1])
#display(im@.Data[,,2]) - green
#display(im@.Data[,,3]) - blue

#Limiar
im2 = im@.Data[,,1] > 0.35
display(im2)

#Preencher buraco
im3=fillHull(im2)
display(im3)

#Area e perimetro de objetos
im4=bwlabel(im3)
m=computeFeatures.shape(im4)
id=m[,1]>500

m2=m[id,]

area=m2[,1]*3.14/37611

m3=m2[,]*6.28/671
m3[,1]=area

rownames(m3)=1:nrow(m3)
plot(im)
coord=computeFeatures.moment(im4)
text(coord[,1],coord[,2],rownames(m3),col = "red")
