# MechaCarChallenge

library(dplyr) # Use the library() function to load the dplyr package.
library(tidyverse) # Use the library() function to load the tidyverse package.

dataframe <- read.csv(file='csv/MechaCar_mpg.csv',) #Import and read in the MechaCar_mpg.csv file

# Perform linear regression

reg <- lm(mpg ~ vehicle_length + vehicle_weight +spoiler_angle + ground_clearance + AWD  , data=dataframe)
summary(reg)

# Get the r-squared value

summary(reg)$r.squared


#Deliverable 2

##Import and read in the Suspension_Coil.csv file

data <- read.csv(file='csv/Suspension_Coil.csv')

##using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column

total_summary=summarize(data,Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

##group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column

lot_summary <- data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Deliverable 3

## write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch

t.test(data$PSI,mu=1500)

## write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch

Lot_1=subset(data,Manufacturing_Lot=='Lot1',select =PSI)
Lot_2=subset(data,Manufacturing_Lot=='Lot2',select =PSI)
Lot_3=subset(data,Manufacturing_Lot=='Lot3',select =PSI)

t.test(Lot_1,mu=1500)
t.test(Lot_2,mu=1500)
t.test(Lot_3,mu=1500)