# Nome dos objetos/variáveis ----------------------------------------------

# Os nomes devem começar com uma letra. Podem conter letras, números, _ e .
# É recomendado usar snake_case.

eu_uso_snake_case
outrasPessoasUsamCamelCase
algumas.pessoas.usam.pontos
E_algumasPoucas.Pessoas_RENUNCIAMconvenções


# Criando objetos/variáveis -----------------------------------------------

obj <- 1
obj

# CTRL + ENTER
# ATALHO: ALT - (alt menos)

# Vetores -----------------------------------------------------------------

1:10

vetor <- 1:10


# Tipos -------------------------------------------------------------------

# Numéricos (numeric)

# Caracteres (character, strings)

obj <- "a"
obj2 <- a

# Bases (data.frame)

mtcars

as.numeric(obj)
as.numeric("1")

# Funções -----------------------------------------------------------------

seq(to = 10, from = 1, by = 2)

mean(seq(1, 10, 2))

seq(1, 10)
1:10
mean(x = c(1:10, NA), na.rm = TRUE)

y <- seq(1, 10, length.out = 5)
y

# Pacotes -----------------------------------------------------------------

install.packages(c("tidyverse", "rmarkdown", "devtools"))
devtools::install_github("rstudio/flexdashboard")

install.packages("tidyverse")

library(dplyr)
library(ggplot2)

# Identação ---------------------------------------------------------------

funcao_com_muitos_argumentos(
  argumento_1 = 10, 
  argumento_2 = 14, 
  argumento_3 = 30, 
  argumento_4 = 11
)

# ATALHO: CTRL+I

# Pipe (%>%) --------------------------------------------------------------

# Receita de bolo sem pipe. Tente entender o que é preciso fazer.

esfrie(
  asse(
    coloque(
      bata(
        acrescente(
          recipiente(
            rep(
              "farinha", 
              2
            ), 
            "água", "fermento", "leite", "óleo"
          ), 
          "farinha", até = "macio"
        ), 
        duração = "3min"
      ), 
      lugar = "forma", tipo = "grande", untada = TRUE
    ), 
    duração = "50min"
  ), 
  "geladeira", "20min"
)

# Veja como o código acima pode ser reescrito utilizando-se o pipe. 
# Agora realmente se parece com uma receita de bolo.

recipiente(rep("farinha", 2), "água", "fermento", "leite", "óleo") %>%
  acrescente("farinha", até = "macio") %>%
  bata(duração = "3min") %>%
  coloque(lugar = "forma", tipo = "grande", untada = TRUE) %>%
  asse(duração = "50min") %>%
  esfrie("geladeira", "20min")


# ATALHO: CTRL + SHIFT + M


# Cheatsheets -------------------------------------------------------------

# Menu help -> cheatsheets
