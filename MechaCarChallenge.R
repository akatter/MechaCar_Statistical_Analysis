#Importing libraries
library('tidyverse')
library('dplyr')

#Part 1 - Linear Regression Tables
mechacar_csv <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
lm_mecha <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_csv)
summary(lm_mecha)


#Part 2 - Coil PSI by Lot with Summarize
coil_csv <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
total_summary <- coil_csv %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary <- coil_csv %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#Part 3 - T-test of PSI
t.test(coil_csv$PSI,mu=1500)
t.test(coil_csv[coil_csv$Manufacturing_Lot == 'Lot1',]$PSI , mu=1500)
t.test(coil_csv[coil_csv$Manufacturing_Lot == 'Lot2',]$PSI , mu=1500)
t.test(coil_csv[coil_csv$Manufacturing_Lot == 'Lot3',]$PSI , mu=1500)