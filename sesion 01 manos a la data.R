# Clase 01 MANOS A LA DATA

# Practica 00
# install.packages("tidyverse")
library(tidyverse)
library(dplyr)
municipalidades <- readr::read_csv('https://raw.githubusercontent.com/BESTDATASCIENCE/manos-a-la-data/master/data/2020/2020-03-04/municipalidades.csv')
View(municipalidades)

# Practica 01
library(tidyverse)
library(dplyr)
municipalidades <- readr::read_csv('https://raw.githubusercontent.com/BESTDATASCIENCE/manos-a-la-data/master/data/2020/2020-03-04/municipalidades.csv')
municipalidades %>%
  group_by(Municipalidad) %>%
  summarise(avance=median(avance)) %>% # cuando una variable tiene nombre con espacios usar ``
  arrange(avance) %>% # ordenar por avance por default de menor a mayor
  View()

municipalidades %>%
  group_by(Municipalidad) %>%
  summarise(avance=median(avance)) %>% # cuando una variable tiene nombre con espacios usar ``
  arrange(desc(avance)) %>% # ordenar por avance por default de mayor a menor
  View()
  
## Exusten reglas para negrita(**) cussiva(*) y negreita-cursva(***)