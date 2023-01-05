# Champs22Data

library(tidyverse)
library(readxl)

Champs22Matches <- read_xlsx("data-raw/champs.xlsx", sheet="Matches")
Champs22Teams <- read_xlsx("data-raw/champs.xlsx", sheet="Teams")
Champs22Rounds <- read_xlsx("data-raw/champs.xlsx", sheet="Rounds")
Champs22KDA <- read_xlsx("data-raw/champs.xlsx", sheet="KDA")
Champs22Kills <- read_xlsx("data-raw/champs.xlsx", sheet="Kills")
Champs22Economy <- read_xlsx("data-raw/champs.xlsx", sheet="Economy")
Champs22RPS <- read_xlsx("data-raw/champs.xlsx", sheet="Round Player Stats")
Champs22XvY <- read_xlsx("data-raw/champs.xlsx", sheet="XvY")
Champs22Events <- read_xlsx("data-raw/champs.xlsx", sheet="Events")
Champs22Assists <- read_xlsx("data-raw/champs.xlsx", sheet="Assists")

Champs22Data <- list(Champs22Matches, Champs22Teams, Champs22Rounds,
                     Champs22KDA, Champs22Kills, Champs22Economy, Champs22RPS,
                     Champs22XvY, Champs22Events, Champs22Assists)

Champs22Data <- map(Champs22Data, ~ (.x %>% select(-1)))

names(Champs22Data) <- c("Champs22Matches", "Champs22Teams", "Champs22Rounds",
                         "Champs22KDA", "Champs22Kills", "Champs22Economy",
                         "Champs22RPS", "Champs22XvY", "Champs22Events",
                         "Champs22Assists")
