#Sam Smedinghoff
#7/18/18
#Problem Set Week 3

#load data
library(SDSFoundations)
bull <- BullRiders

new_bull <- bull[bull$Rides14 > 0,]
RidesPerEvent14 <- new_bull$Rides14/new_bull$Events14
hist(RidesPerEvent14)

#1a-c
fivenum(RidesPerEvent14)

#1d-e
plot(RidesPerEvent14,new_bull$Rank14)
abline(lm(new_bull$Rank14~RidesPerEvent14))
cor(RidesPerEvent14,new_bull$Rank14)

#2
minutes <- c(30, 45, 180, 95, 130, 140, 30, 80, 60, 110, 0, 80)
grades <- c(74, 68, 87, 90, 94, 84, 92, 88, 82, 93, 65, 90)
cor(minutes,grades)
plot(minutes,grades)

#2d
minutes_nooutlier <- c(30, 45, 180, 95, 130, 140, 80, 60, 110, 0, 80)
grades_nooutlier <- c(74, 68, 87, 90, 94, 84, 88, 82, 93, 65, 90)
cor(minutes_nooutlier,grades_nooutlier)
