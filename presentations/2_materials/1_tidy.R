# R code for CASA Coding Group ----

# Load packages ----
# First install these packages (you'll only need to do this once)
# install.packages(c("tidyverse","devtools"))

# Then load the packages. You have to load packages you want to use every time you start R.
library(tidyverse)
library(readxl)

# Load data ----
# Read in the data using the read_excel function from the readxl package
vot_data <- read_excel("presentations/2_materials/casa_lab_vot_data.xlsx")

# Explore data ----
# Take a look at the data using head(), str(), and summary() functions
head(vot_data)

str(vot_data)

summary(vot_data)

# Prepare data ----
# Now we'll start to use some tidyverse syntax

vot_data <- vot_data %>%
  mutate()
