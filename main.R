# main.R

# Set the working directory
setwd("/Users/albanovukelaj/Desktop/Motherfucker/Football-Predictor-ML")

# Print the new working directory and list files
cat("New working directory:", getwd(), "\n")
print(list.files())

# Source the other R scripts
source("data_loading.R")
source("data_analysis.R")
source("visualization.R")

cat("Average Home Goals:", average_home_goals, "\n")
cat("Average Away Goals:", average_away_goals, "\n")

cat("Home Advantage (extra goals per game):", home_advantage, "\n")
cat("Away Disadvantage (goals less per game):", away_advantage, "\n")

# Example: Calculate the coefficient for "Borussia Dortmund"
dortmund_coefficient <- calculate_coefficient("Borussia Dortmund", games)
cat("Coefficient for Borussia Dortmund based on average attendance:", dortmund_coefficient, "\n")
