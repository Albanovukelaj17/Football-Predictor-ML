# data_analysis.R
# Berechnung der durchschnittlichen Tore der Heimmannschaften und Auswärtsmannschaften
average_home_goals <- mean(games$home_club_goals)
average_away_goals <- mean(games$away_club_goals)

home_advantage <- average_home_goals - average_away_goals
away_advantage <- average_away_goals - average_home_goals

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


# Function to calculate a coefficient based on average attendance for a given team
calculate_coefficient <- function(team_name, games_data) {
  # Filter games involving the given team as home team
  team_games <- games_data %>%
    filter(home_club_name == team_name | away_club_name == team_name)
  
  # Calculate the average attendance for the team's games
  average_attendance <- mean(team_games$attendance, na.rm = TRUE)
  
  # Define a coefficient based on the average attendance
  # For example, using a simple formula: coefficient = average_attendance / 10000
  # You can adjust this formula based on your needs
  coefficient <- average_attendance / 10000
  
  # Return the coefficient
  return(coefficient)
}
