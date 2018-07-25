#load data
library(SDSFoundations)
animaldata <- AnimalData

#get adults
adults <- animaldata[animaldata$Age.Intake >= 1,]

#Find the adult cat/dog split
table(adults$Animal.Type)

#Pull out adult dogs and adult cats
adult_dogs <- adults[adults$Animal.Type=="Dog",]
adult_cats <- adults[adults$Animal.Type=="Cat",]

#Visualize and describe the dog weights
hist(adult_dogs$Weight)
fivenum(adult_dogs$Weight)
zdog <- (13 - mean(adult_dogs$Weight))/sd(adult_dogs$Weight)
1 - pnorm(zdog)

#Visualize and describe the cat weights
hist(adult_cats$Weight)
mean(adult_cats$Weight)
median(adult_cats$Weight)
sd(adult_cats$Weight)
zcat <- (13 - mean(adult_cats$Weight))/sd(adult_cats$Weight)
1 - pnorm(zcat)
