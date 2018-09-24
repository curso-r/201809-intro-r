# Pacotes -----------------------------------------------------------------

library(tidyverse)

# Ler a base --------------------------------------------------------------

imdb <- read_rds("data-raw/dados_imdb.rds")

# Filter ------------------------------------------------------------------

imdb <- imdb %>%
  filter(country == "USA")

imdb <- imdb %>%
  rename(
    titulo = movie_title,
    ano = title_year,
    diretor = director_name,
    duracao = duration,
    cor = color,
    generos = genres,
    pais = country,
    classificacao = content_rating,
    orcamento = budget,
    receita = gross,
    nota_imdb = imdb_score,
    likes_facebook = movie_facebook_likes,
    ator_1 = actor_1_name,
    ator_2 = actor_2_name,
    ator_3 = actor_3_name
  )

imdb <- imdb %>%
  mutate(
    classificacao = case_when(
      classificacao %in% c("PG-13")      ~ "A partir de 13 anos",
      classificacao %in% c("PG")         ~ "Livre",
      classificacao %in% c("R", "NC-17") ~ "A partir de 18 anos",
      TRUE                               ~ "Outros"
    )
  )

glimpse(imdb)
write_rds(imdb, "data/imdb.rds")
