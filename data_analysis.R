# data_analysis.R
# Berechnung der durchschnittlichen Tore der Heimmannschaften und Auswärtsmannschaften
average_home_goals <- mean(games$home_club_goals)
average_away_goals <- mean(games$away_club_goals)

home_advantage <- average_home_goals - average_away_goals

# Berechnung der durchschnittlichen Tore für jedes Stadion
library(dplyr)  # Ensure you have dplyr loaded for the analysi
stadium_stats <- games %>%
  group_by(stadium) %>%
  summarise(
    avg_home_goals = mean(home_club_goals),
    avg_away_goals = mean(away_club_goals),
    games_played = n()
  ) %>%
  mutate(home_advantage = avg_home_goals - avg_away_goals) %>%
  arrange(desc(home_advantage))
