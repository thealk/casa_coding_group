###################################################
# Helper script for analyzing Starbucks drink data
###################################################

# Set up ----

# Read in 1_prep_data script
source("presentations/1_materials/1_prep_data.R")

# Plots ----
## Calories x sugars ----
calsugs_plot <- ggplot(data = starbucks, 
                       aes(x = sugars, y = Calories)) + 
     geom_point()
calsugs_plot

calsugsbevs_plot <- ggplot(data = starbucks, 
                           aes(x = sugars, y = Calories)) + 
     geom_point()+
     geom_smooth(method="lm")+
     facet_wrap(~Beverage_category)
calsugsbevs_plot

calbevs_plot <- ggplot(data=starbucks, 
                       aes(x=reorder(Beverage_category,Calories,FUN=median), 
                           y=Calories, 
                           fill=reorder(Beverage_category, Calories, FUN=median)))+
        geom_boxplot()+
        xlab("Beverage Category")+
        theme(axis.text.x = element_blank())+
        scale_fill_discrete(name="Beverage Category")
calbevs_plot
