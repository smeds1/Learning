#Sam Smedinghoff
#7/30/18
#Week 4 - Problem Set 4

library(SDSFoundations)
acl <- AustinCityLimits

#Question 1
acl$Recent[acl$Year < 2012] <- 0
acl$Recent[acl$Year >= 2012] <- 1

tabGenderRecent <- table(acl$Gender,acl$Recent)
tabGenderRecent
chisq.test(tabGenderRecent)$expected
chisq.test(tabGenderRecent,correct=F)

#Question 2
qchisq(.95,df=2)

#Question 3
qchisq(.95,df=1)

#Question 4
qchisq(.95,df=2)
