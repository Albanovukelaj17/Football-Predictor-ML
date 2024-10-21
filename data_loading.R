# data_loading.R
setwd("/Users/albanovukelaj/Desktop/Motherfucker/Football-Predictor-ML/dataset offline")

transfers <- read.csv("transfers.csv", stringsAsFactors = FALSE)
players <- read.csv("players.csv", stringsAsFactors = FALSE)
player_valuations <- read.csv("player_valuations.csv", stringsAsFactors = FALSE)
games <- read.csv("games.csv", stringsAsFactors = FALSE)
game_lineups <- read.csv("game_lineups.csv", stringsAsFactors = FALSE)
game_events <- read.csv("game_events.csv", stringsAsFactors = FALSE)
competitions <- read.csv("competitions.csv", stringsAsFactors = FALSE)
clubs <- read.csv("clubs.csv", stringsAsFactors = FALSE)
club_games <- read.csv("club_games.csv", stringsAsFactors = FALSE)
appearances <- read.csv("appearances.csv", stringsAsFactors = FALSE)
