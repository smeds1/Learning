#Sam Smedinghoff
#7/18/18
#Lab03

#load data
library(SDSFoundations)
bull <- BullRiders

#get riders that rode in 2012
new_bull12 <- bull[bull$Rides12 > 0,]

#Visualize and describe earnings
hist(new_bull12$Earnings12)
fivenum(new_bull12$Earnings12)

#earnings vs. ride percentage
plot(new_bull12$RidePer12,new_bull12$Earnings12)
cor(new_bull12$RidePer12,new_bull12$Earnings12)

#earnings vs. cup points
plot(new_bull12$CupPoints12,new_bull12$Earnings12)
cor(new_bull12$CupPoints12,new_bull12$Earnings12)

# identify specific case
which(new_bull12$Earnings12 == max(new_bull12$Earnings12))

#Subset the data
nooutlier <- new_bull12[new_bull12$Earnings12 < 1000000 ,]
plot(nooutlier$RidePer12,nooutlier$Earnings12)
cor(nooutlier$RidePer12,nooutlier$Earnings12)
plot(nooutlier$CupPoints12,nooutlier$Earnings12)
cor(nooutlier$CupPoints12,nooutlier$Earnings12)