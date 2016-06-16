library(ggmap)

#Using GGPLOT, plot the Base World Map
mp <- NULL
mapWorld <- borders("world", colour="gray50", fill="gray50") # create a layer of borders
mp <- ggplot() +   mapWorld


# Load data
data <- read.csv("../data/SurveyData_Text_Cleaned.csv")
countries <- as.character(data$Q12.5)
longs <- data$Long
lats <- data$Lat
dataFrame <- data.frame(countries, longs, lats)

# Plot each (Long, Lat) pair on map
for (rowNum in 1 : nrow(data [26 * 3 + 3])) {
  print(as.character(dataFrame$countries [rowNum]))

  long = dataFrame$longs [rowNum]
  lat = dataFrame$lats [rowNum]

  #print(as.numeric(as.character(long)))
  #print(as.numeric(as.character(lat)))

  mp <- mp + geom_point(aes(
                            x = as.numeric(as.character(long)),
                            y = as.numeric(as.character(lat))
                        ),
                        color = "blue", size = 1)
}

mp
