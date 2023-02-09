######## ESTRUTURA DE DADOS - FATORES ########
# Sequencia de valores, definidos por níveis, comumente expressa váriaveis
# categóricas, facilita quando se deseja saber a quantidade de cada categ.

escolaridade <- c("fundamental", "médio","superior","médio","superior","fundamental")
print(escolaridade)

#FAtor
escolaridade_fator <- as.factor(escolaridade)
print(escolaridade_fator)

escolaridade[3]

escolaridade_fator[3]

summary(escolaridade)
summary(escolaridade_fator)

table(escolaridade)

#Tensão eletricia
tensao <- c(110, 220, 110,  110, 110, 110, 220)
print(tensao)
summary(tensao)

tensao_factor <- as.factor(tensao)
print(tensao)
summary(tensao_factor)