# Set your working directory to the folder where the CSV files are located
setwd("/Users/albanovukelaj/Desktop/Motherfucker/Football-Predictor-ML/dataset offline")

# Load the CSV files
transfers <- read.csv("transfers.csv")
players <- read.csv("players.csv")
player_valuations <- read.csv("player_valuations.csv")
games <- read.csv("games.csv")
game_lineups <- read.csv("game_lineups.csv")
game_events <- read.csv("game_events.csv")
competitions <- read.csv("competitions.csv")
clubs <- read.csv("clubs.csv")
club_games <- read.csv("club_games.csv")
appearances <- read.csv("appearances.csv")

# View the structure of one of the datasets (for example, games.csv)
str(games)

# You can also view the first few rows of any dataset
head(games)

