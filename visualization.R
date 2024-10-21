# visualization.R
library(ggplot2)

ggplot(stadium_stats, aes(x = reorder(stadium, home_advantage), y = home_advantage)) +
  geom_bar(stat = "identity", fill = "blue") +
  coord_flip() +
  labs(
    title = "Heimvorteil pro Stadion",
    x = "Stadion",
    y = "Heimvorteil (Durchschnittliche Tore)"
  ) +
  theme_minimal()
