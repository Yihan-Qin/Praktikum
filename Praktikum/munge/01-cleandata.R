DataOmitRow <- Ginidata[c(-1, -2, -3, -20), ]
# omit the rows 1, 2, 3 and 20 from original data

CleanDataNA <- na.omit(DataOmitRow)
# omit all the NA rows

RenameData <- setNames(CleanDataNA, c("Bundesland", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", 
                      "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023"))
# rename all the columns

EndData <- RenameData
EndData$`2005` <- as.numeric(EndData$`2005`)
EndData$`2020` <- as.numeric(EndData$`2020`)
EndData$`2023` <- as.numeric(EndData$`2023`)
EndData$Bundesland[c(1,16)] <- c("Baden-Wuerttemberg", "Thueringen")
# change the character columns to numeric columns and change the ü/ ö to ue/ oe