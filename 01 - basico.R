bd_viagens_a_serviço <- read.csv(
  file = "AP/R/00 - estudando_análise_de_dados/2021_20211128_Viagens/2021_Viagem.csv",
  sep = ";",
  dec = ",",
  fileEncoding = "latin1"
)
?factor
head(bd_viagens_a_serviço)

#categorizando os orgãos
orgaos <-  summary(
  as.factor(
    bd_viagens_a_serviço$Nome.do.órgão.superior
  )
)
View(orgaos)


### TRANSFORMAÇÃO DOS DADOS OBTIDOS

#Convertendo o tipo do dato para tipo Date
?as.Date
library(dplyr)
glimpse(bd_viagens_a_serviço)

bd_viagens_a_serviço$data.inicio <- as.Date(
  bd_viagens_a_serviço$Período...Data.de.início, 
  "%d/%m/%Y"
)

glimpse(bd_viagens_a_serviço)


#Formatando a data de inicio - para utilizar apenas Ano/Mês
?format
bd_viagens_a_serviço$data.inicio.formatada <- format(
  bd_viagens_a_serviço$data.inicio,
  "%d-%m-%Y")
bd_viagens_a_serviço$data.inicio.formatada

