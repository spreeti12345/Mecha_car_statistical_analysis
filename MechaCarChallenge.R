# adding libraries
library(dplyr)
# Performing Linear Regression on MPG data
mpg <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) # loading mpg dataset 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg) # create linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg)) # summarize linear regression

# Creating Visualizations for the Trip Analysis
sus_coils <- read.csv('Suspension_Coil.csv', stringsAsFactors = F) # loading suspension coil dataset
total_summary <- sus_coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) # Create a summary for all PSI data
lot_summary <- sus_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) # Create a summary for all PSI data by lot
# T-tests on Suspension Coils
t.test(x=sus_coils$PSI, mu=1500) # t test n all cars' PSI with a mean of 1500
pop1 <- subset(sus_coils, Manufacturing_Lot=='Lot1') # Create subset for lot 1 cars
t.test(x=pop1$PSI, mu=1500) # t test on lot 1 cars' PSI with a mean of 1500
pop2 <- subset(sus_coils, Manufacturing_Lot=='Lot2') # Create subset for lot 2 cars
t.test(x=pop2$PSI, mu=1500) # t test on lot 2 cars' PSI with a mean of 1500
pop3 <- subset(sus_coils, Manufacturing_Lot=='Lot3') # Create subset for lot 3 cars
t.test(x=pop3$PSI, mu=1500) # t test on lot 3 cars' PSI with a mean of 1500