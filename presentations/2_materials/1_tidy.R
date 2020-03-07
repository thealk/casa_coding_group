# R code for CASA Coding Group ----

# Load packages ----
# First install these packages (you'll only need to do this once)
# install.packages(c("tidyverse","devtools"))

# Then load the packages. You have to load packages you want to use every time you start R.
library(tidyverse)
library(readxl)

# Load data ----
# Read in the data using the read_excel function from the readxl package
vot <- read_excel("presentations/2_materials/casa_lab_vot_data.xlsx")
vot <- read.csv("presentations/2_materials/simulated_vot_data.csv")


# OR USE SIMULATED VOT DATA FROM POLITZER-AHLES & PICCINIINI
# https://osf.io/2n3mu/

# Explore data ----
# Take a look at the data using head(), str(), and summary() functions
head(vot) # Take a peak at the first 6 rows
str(vot) # Take a look at the structure of each variable
names(vot) # What are the names of the variables (columns)?
summary(vot) # Summary stats for all variables
nrow(vot) # How many rows?
View(vot) # View in spreadsheet-like form

# Explore data by variables ----
head(vot$Participant) # first 6 values of the variable Participant
levels(vot$Participant) # all "levels" of the variable Participant, which is a factor
length(levels(vot$Participant)) # how many levels are there?

mean(vot$VOT)
min(vot$VOT)
max(vot$VOT)

# Prepare data ----
# Now we'll start to use some tidyverse syntax

vot_data <- vot_data %>%
  mutate()
