#Sam Smedinghoff
#7/22/18
#Week 5 Problem Set

library(SDSFoundations)
WR <- WorldRecords

#Question #1
mensPolevault <- WR[WR$Event == 'Mens Polevault' & WR$Year >= 1970,]
max(mensPolevault$Record)
plot(mensPolevault$Year,mensPolevault$Record)
linFit(mensPolevault$Year,mensPolevault$Record)

