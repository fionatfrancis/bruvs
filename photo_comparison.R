datafile1 <- "surface_measurement_comparison.csv"
library(tidyverse)
points<- read.csv(datafile1, header=T)
points <- points %>% mutate(photoID = paste(site, transect, distance, sep = "_"))
points %>% ggplot() + geom_point(aes(number.seeded, ratio, colour = photoID)) +
  geom_line(aes(number.seeded, ratio, colour = photoID))
                                  