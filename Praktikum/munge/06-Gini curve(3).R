ggplot(EndData, aes(x = factor(Bundesland, levels = c("Baden-Wuerttemberg", "Saarland", "Niedersachsen",
                                                      "Rheinland-Pfalz", "Bayern", "Schleswig-Holstein", 
                                                      "Nordrhein-Westfalen", "Bremen", "Hamburg", "Hessen", 
                                                      "Thueringen", "Sachsen",
                                                      "Sachsen-Anhalt", "Mecklenburg-Vorpommern", "Brandenburg", "Berlin")),
                    y = `2023`, group = 1)) +
  geom_point() +
  geom_point(data = subData3, aes(x = Bundesland, y = `2023`), color = "red") +
  geom_point(data = subData4, aes(x = Bundesland, y = `2023`), color = "blue") +
  scale_y_continuous(breaks = seq(0.25, 0.32, by = 0.01)) +
  labs(
    x = "Bundeslaender in Deutschland",
    y = "Gini-Koeffizient im Jahr 2023"
  ) +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 75, vjust = 0.9, hjust = 0.9))
# be similar to the enlarged line graph for question 2 (y-coordinate range: 0.25 to 0.32)
# all Gini coeffcient for different Bundeslaender in Germany in 2023
# but the Bundeslaender with the corresponding Gini coefficients are displayed from left to right
# on the X-axis respectively according to their west and east geographical locations.