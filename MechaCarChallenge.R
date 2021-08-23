library(dplyr)
library(tidyverse)

#Deliverable 1
MechaCar_mpg <- read.csv("MechaCar_mpg.csv", stringsAsFactors = F) #

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))

# Deliverable 2

Suspension_Coil_Table <- read.csv("Suspension_Coil.csv", stringsAsFactors = F)

total_summary = Suspension_Coil_Table %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups =  'keep')

lot_summary = Suspension_Coil_Table %>%
  group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups =  'keep')

# Deliverable 3

Sample_Suspension_Coil <- Suspension_Coil_Table %>%
  sample_n(50) # Generate 50 random sample table

t.test((Sample_Suspension_Coil$PSI),mu=mean(Suspension_Coil_Table$PSI))

# Creating sub

lot1_Suspension_Coil <- Suspension_Coil_Table %>%
  filter(Manufacturing_Lot == 'Lot1')

lot2_Suspension_Coil <- Suspension_Coil_Table %>%
  filter(Manufacturing_Lot == 'Lot2')

lot3_Suspension_Coil <- Suspension_Coil_Table %>%
  filter(Manufacturing_Lot == 'Lot3')

# T.Test Per Lot against total population

t.test((lot1_Suspension_Coil$PSI),mu=mean(Suspension_Coil_Table$PSI))

t.test((lot2_Suspension_Coil$PSI),mu=mean(Suspension_Coil_Table$PSI))

t.test((lot3_Suspension_Coil$PSI),mu=mean(Suspension_Coil_Table$PSI))
