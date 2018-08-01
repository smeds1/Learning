#Sam Smedinghoff
#7/30/18
#Week 4 - Lab 4

library(SDSFoundations)
acl <- AustinCityLimits

#Question 1
tabgen <- table(acl$Genre)
expgen <- c(.25, .25, .25, .25)

chisq.test(tabgen,p=expgen)$expected
chisq.test(tabgen,p=expgen)

#Question 2
tabGenTwitter <- table(acl$Genre,acl$Twitter.100k)
prop.table(tabGenTwitter,margin=1)
chisq.test(tabGenTwitter)$expected
chisq.test(tabGenTwitter,correct=F)
