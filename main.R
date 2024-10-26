# main.R

# Print the current working directory for debugging purposes
cat("Current working directory:", getwd(), "\n")
print(list.files())

# Check if data_analysis.R is visible
if ("data_analysis.R" %in% list.files()) {
  cat("data_analysis.R is visible in the current directory.\n")
} else {
  cat("data_analysis.R is NOT visible in the current directory.\n")
}

# Try reading data_analysis.R as a text file
tryCatch({
  readLines("data_analysis.R")
}, error = function(e) {
  cat("Error reading data_analysis.R:", e$message, "\n")
})

# Use absolute paths to ensure sourcing works
source("/Users/albanovukelaj/Desktop/Motherfucker/Football-Predictor-ML/data_analysis.R")
source("/Users/albanovukelaj/Desktop/Motherfucker/Football-Predictor-ML/data_loading.R")
source("/Users/albanovukelaj/Desktop/Motherfucker/Football-Predictor-ML/visualization.R")
