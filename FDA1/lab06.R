#Sam Smedinghoff
#7/24/18
#Week 6 Lab

library(SDSFoundations)
world <- WorldBankData

denmark <- world[world$Country == 'Denmark',]
denmark90on <- denmark[denmark$year >= 1990,]

propInternet90on <- denmark90on$internet.users/denmark90on$population
yearsSince90 <- denmark90on$year - 1990

expFit(yearsSince90,propInternet90on)
logisticFit(yearsSince90,propInternet90on)