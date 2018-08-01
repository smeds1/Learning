#Sam Smedinghoff
#7/26/18
#Week 2 - Lab 2

library(SDSFoundations)
bull <- BullRiders

riders14 <- bull[bull$Events14>=5,]

mean(riders14$RidePer14)
sd(riders14$RidePer14)
hist(riders14$RidePer14)

t.test(riders14$RidePer14,mu=.5)
