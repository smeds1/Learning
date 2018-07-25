#Sam Smedinghoff
#7/20/18
#Week 4 Lab


library(SDSFoundations)
acl <- AustinCityLimits

males <- acl[acl$Gender=="M",]

genreTable <- table(males$Genre)
grammyTable <- table(males$Grammy)
twoway <- table(males$Genre,males$Grammy)
barplot(twoway)


prop.table(genreTable)
prop.table(grammyTable)
prop.table(twoway,1)

barplot(prop.table(twoway,1))
