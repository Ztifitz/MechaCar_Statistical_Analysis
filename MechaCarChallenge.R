#Deliverable 1
library(dplyr)

#Read the MechaCar .csv
Deliv1 <- read.csv('MechaCar_mpg.csv')

#Perform linear regression
lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=Deliv1)

#Perform summary
summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=Deliv1))


#Deliverable 2

#Read the Coil .csv
Deliv2 <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Create a total_summary
total_summary <- Deliv2 %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          .groups = 'keep')

#Create Lot_summary
lot_summary <- Deliv2  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         .groups = 'keep') 

#Deliverable 3

#Use t-test to determine statistical difference from the mean
t.test(Deliv2$PSI,mu=1500)

#Use t-test with the subset function for each lot
lot1 <- subset(Deliv2, Manufacturing_Lot=="Lot1")
lot2 <- subset(Deliv2, Manufacturing_Lot=="Lot2")
lot3 <- subset(Deliv2, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)