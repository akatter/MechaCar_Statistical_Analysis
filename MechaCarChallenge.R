library('tidyverse')
library('dplyr')

mechacar_csv <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

lm_mecha <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_csv)

summary(lm_mecha)