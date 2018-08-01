#Sam Smedinghoff
#7/27/18
#Week 2 - Problem Set 2

library(SDSFoundations)
bull <- BullRiders

#Question 1
riders12 <- bull[bull$Events12 > 0,]
earnings_per <- riders12$Earnings12/riders12$Events12

hist(earnings_per)
log_earnings_per <- log(earnings_per)
hist(log_earnings_per)
mean(log_earnings_per)
t.test(log_earnings_per,mu=.5)
exp(8.572169)
exp(9.120605)

#Question 2
chips <- c(29.4, 29, 28.4, 28.8, 28.9, 29.3, 28.5, 28.2)
mean(chips)
sd(chips)
t.test(chips,mu=28.5)
qt(.025,df=7)

#Question 3
qt(.95,df=24)

#Question 4
qt(.95,df=11)
