########### MANIPULAÇÃO BÁSICA DE IMAGENS ########
###################################################
### Necessario pacote EBImage, e MAGICK ##########

remove(list=ls())
library(EBImage)
setwd("~/Linguagem R/arquivos")
im = readImage("Feijao.jpg")
plot(im)

im2=resize(im,500)
plot(im2)
?resize

#Rotaciona imagem
im3 = rotate(im2,180)
plot(im3)

#Espelha imagem
im3 = flip(im2)
plot(im3)

#Espelha no sentido das linhas e colunas
im3 = flop(im2)
plot(im3)

#Somar valor para cada um dos pixels, efeito de aumentar brilho
im4 = im3
im4@.Data=im3@.Data+0.1
plot(im4)

#Somar valor para cada um dos pixels, efeito de diminuir brilho
im4 = im3
im4@.Data=im3@.Data-0.1
plot(im4)

# Aumentar contraste 
im4 = im3
im4@.Data=im3@.Data*3
plot(im4)

# Diminuir contraste
im4 = im3
im4@.Data=im3@.Data*0.5
plot(im4)


#################################################################
### PACOTE MAGICK
install.packages("magick")
library(magick)
?magick

#abrir image
iim = image_read("Feijao.jpg")

