install.packages("ggplot2")
library(ggplot2)


EndData <- as.data.frame(EndData)
# cleaned dataset for original dataset
subData1 <- subset(EndData, Bundesland %in% c("Berlin", "Hamburg", "Hessen"))
# dataset for Bundeslaender with the highest Gini coefficient in 2023
subData2 <- subset(EndData, Bundesland %in% c("Thueringen", "Sachsen"))
# dataset for Bundeslaender with the lowest Gini coefficient in 2023







ggplot(EndData, aes(x = Bundesland, y = `2023`, group = 1)) +
       geom_line() +
       geom_point() +
       scale_y_continuous(limits = c(0, 1)) +
       labs(
         x = "Bundeslaender in Deutschland",
         y = "Gini-Koeffizient im Jahr 2023"
       ) +
       theme_bw() +
       theme(axis.text.x = element_text(angle = 75, vjust = 0.9, hjust = 0.9))
# the unenlarged line graph for question 2 (y-coordinate range: 0 to 1)
# all Gini coeffcient for different Bundeslaender in Germany in 2023











ggplot(EndData, aes(x = Bundesland, y = `2023`, group = 1)) +
  geom_line() +
  geom_point() +
  geom_point(data = subData1, aes(x = Bundesland, y = `2023`), color = "red") +
  geom_point(data = subData2, aes(x = Bundesland, y = `2023`), color = "blue") +
  scale_y_continuous(breaks = seq(0.25, 0.32, by = 0.01)) +
  labs(
    x = "Bundeslaender in Deutschland",
    y = "Gini-Koeffizient im Jahr 2023"
  ) +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 75, vjust = 0.9, hjust = 0.9))
# the enlarged line graph for question 2 (y-coordinate range: 0.25 to 0.32)
# all Gini coeffcient for different Bundeslaender in Germany in 2023


















ggplot(EndData, aes(x = factor(Bundesland, levels = c("Baden-Wuerttemberg", "Bayern", "Saarland",
                                             "Rheinland-Pfalz", "Hessen", "Nordrhein-Westfalen",
                                             "Niedersachsen", "Bremen", "Hamburg",
                                             "Schleswig-Holstein", "Thueringen", "Sachsen",
                                             "Sachsen-Anhalt", "Berlin", "Brandenburg", 
                                             "Mecklenburg-Vorpommern")),
                    y = `2023`, group = 1)) +
  geom_line() +
  geom_point() +
  geom_point(data = subData1, aes(x = Bundesland, y = `2023`), color = "red") +
  geom_point(data = subData2, aes(x = Bundesland, y = `2023`), color = "blue") +
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






var(EndData$`2023`)
weighted.mean(c(0.25, 0.26, 0.27, 0.29, 0.30, 0.31, 0.32), c(2, 2, 1, 4, 2, 2, 3))
median(EndData$`2023`)
# statistical approach



# Jetzt vergleiche ich die wirtschaftliche Ungleichheit zwischen verschiedenen Bundeslaendern
# in Deutschland im Jahr 2023.


# Ich habe die Gini-Koeffizienten, was ein Kriterium zur Ungleichheit ist, auf der Website
# gesucht und diese Koeffizienten als Liniendiagramm gezeigt. Wobei die X-Achse ist Namen der
# Bundeslaendern und die y-Achse ist Gini-Koeffizienten verschiedener Bundeslaendern.







# Dazu koennen wir sehen, dass die Kurve nicht stark schwankt. Und dann habe ich auch die Varianz
# dafuer gerechnet und entdecke, dass die Varianz gleich 0.00060625 sehr klein ist. Das heisst,
# dass die wirtschaftliche Ungleichheit zwischen verschiedenen Bundeslaendern sind aehnlich.







# Jetzt vergroessere ich das Liniendiagramm. Damit sind viel Details verfuegbar.
# 1.Der Gini-Koeffizient schwankt sich zwischen 0.25 bis 0.32. Das heisst, dass die
#   wirtschaftliche Unglechheit fuer alle Bundeslaender in einem niedrigen bis mittleren Niveau
#   ist.
# 2.Der groessteste Gini-Koeffizienz 0.32 haben Staedten Berlin, Hamburg und Hessen, waehrend
#   Staedte Sachsen und Thueringen haben den kleinesten Gini-Koeffizient 0.25. Die Differenz
#   betraegt 0.07. Das bedeutet, dass die Unterschiede in der wirtschaftlichen Ungleichheit
#   zwischen Bundeslaender mit grossten und kleinsten Gini-Koeffizient sind relativ gross.
# 3.Der Erwartungswert, naehmlich der gewichtete Mittelwert, dafuer betraegt 0.289375,
#   entspricht ungefaehr 0.29, was ist auch gleich der Modus und die Median. Wir koennen
#   intepretieren, dass die meisten Bundeslaendern haben niedrige Ungleichheit.











# Mit einem anderen Bild, wobei ich die Bundeslaender auf der x-Achse von links nach rechts im
# Westen und Osten des geografischen Standorts darstelle, koennen wir klar sehen, dass die
# Bundeslaender im Westen groessere Gini-Koeffizienten als Bundeslaender im Osten haben. Und 
# Berlin hat den groessten Gini-Koeffizient, naehmlich die wirtschaftliche Ungleichheit im Westen
# ist groesser als im Osten und  Berlin ist das wirtschaftlich ungleichste Bundesland im Osten.














# Presentation
# Gini-Wert                     Bedeutung
# 0.0 bis 0.2                   sehr geringe Ungleichheit
# 0.2 bis 0.29                  niedrige Ungleichheit
# 0.3 bis 0.39                  mittlere Ungleichheit
# 0.4 bis 0.49                  hohe Ungleichheit
# groesser als 0.5              sehr hohe Ungleichheit




