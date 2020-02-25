# Load libraries
library(tidyverse)

# Load starwars data
starwars <- dplyr::starwars

starwars %>% filter(mass<500) %>%
  ggplot(aes(x=height,y=mass,color=species))+
  geom_point()+
  labs(title = "Height and Weight of Different Species in Starwars")
