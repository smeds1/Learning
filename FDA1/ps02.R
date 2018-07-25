#Sam Smedinghoff
#7/18/18
#Problem Set Week #2

#load data
library(SDSFoundations)
animaldata <- AnimalData

#1a
dogs = animaldata[animaldata$Animal.Type == 'Dog',]
table(dogs$Intake.Type)

#1b
surrendered <- dogs[dogs$Intake.Type == "Owner Surrender",]
nrow(surrendered)/nrow(dogs)

#1c
returned_to_owner <- surrendered[surrendered$Outcome.Type == 'Return to Owner',]
nrow(returned_to_owner)

#1d
mean(returned_to_owner$Days.Shelter)

#3
data <- c(2, 2, 3, 5, 6, 7, 9, 13, 15, 18)
mean(data)
fivenum(data)
range(data)

#4a
sleep_mean <- 6.7
sleep_sd <- 1.1
sleep_mean - 1.5*sleep_sd

#4b
pnorm(4.5,mean=sleep_mean,sd=sleep_sd,lower.tail = FALSE)

#4c
pnorm(8.79,mean=sleep_mean,sd=sleep_sd)-pnorm(5.38,mean=sleep_mean,sd=sleep_sd)
