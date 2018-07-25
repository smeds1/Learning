#Sam Smedinghoff
#7/21/18
#Week 4 Problem Set

library(SDSFoundations)
acl <- AustinCityLimits

#Question 1
table(acl$Facebook.100k)
table(acl$Age.Group)
twoway <- table(acl$Facebook.100k,acl$Age.Group)
prop.table(twoway,2)

