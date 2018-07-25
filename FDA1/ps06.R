#Sam Smedinghoff
#7/24/18
#Week 6 Problem Set

library(SDSFoundations)
world <- WorldBankData

#question 1
brazil <- world[world$Country == 'Brazil' & world$year >= 1995,]
yearsSince95 <- brazil$year - 1995
phoneUsers <- brazil$mobile.users/1000000

tripleFit(yearsSince95,phoneUsers)
logisticFitPred(yearsSince95,phoneUsers,30)

#question 3
years <- c(1,3)
wolves <- c(25,45)

linFit(years,wolves)
expFit(years,wolves)
linFitPred(years,wolves,7)
expFitPred(years,wolves,7)
