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
  