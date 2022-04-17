library('tidyverse')
library('dplyr')

mechacar_csv <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

lm_mecha <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_csv)

summary(lm_mecha)

coil_csv <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

total_summary <- coil_csv %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

lot_summary <- coil_csv %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

