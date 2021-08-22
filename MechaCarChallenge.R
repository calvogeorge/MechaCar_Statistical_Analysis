library(dplyr)
MechaCar_mpg <- read.csv("MechaCar_mpg.csv", stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))
