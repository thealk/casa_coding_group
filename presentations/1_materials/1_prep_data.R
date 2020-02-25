###################################################
# Helper script for analyzing Starbucks drink data
###################################################


# Setup ----

# Run this line if you you've never installed these packages:
#    install.packages(c("ggplot2", "dplyr", "kableExtra"))
# Note: you can also check if you have them installed, and even install them directly, in your RStudio Packages panel or by clicking Tools >> Install Packages

# Load packages that contain functions we will use
library(tidyverse)
library(plyr)

# Load data ----
starbucks <- read.csv("presentations/1_materials/starbucks_drinkMenu_expanded.csv")

# View data
View(starbucks)
str(starbucks$caffeine)
unique(starbucks$caffeine)

# Create new column ----
# Create a "caffeine" column that is numeric
starbucks <- starbucks %>%
        mutate(caffeine = revalue(caffeine, replace = c("varies" = NA, "Varies" = NA)),
               caffeine_num = as.numeric(as.character(caffeine)))

starbucks$caffeine_num %>% summary()
# Is caffeine content over 100 mg? If so, label it "YES", otherwise, "NO"
starbucks <- starbucks %>%
        mutate(too_much_caffeine = ifelse(caffeine_num > 100, "YES", "NO"))

starbucks %>% select(caffeine_num, too_much_caffeine) %>% head()

# Summarise data ----
calsugs <- summarise(group_by(starbucks, Beverage_category),
                  cals = mean(Calories),
                  sug = mean(sugars))





