#Sam Smedinghoff
#7/22/18
#Week 5 Lab

library(SDSFoundations)
WR <- WorldRecords

mensMile <- WR[WR$Event == 'Mens Mile',]
womensMile <- WR[WR$Event == 'Womens Mile',]

plot(mensMile$Year,mensMile$Record,pch=16)
plot(womensMile$Year,womensMile$Record,pch=16)

linFit(mensMile$Year,mensMile$Record)
linFit(womensMile$Year,womensMile$Record)
