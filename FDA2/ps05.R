#Sam Smedinghoff
#7/31/18
#Week 5 - Problem Set 5

library(SDFoundation)
film <- FilmData

#Question 1
film$Budget.Size[film$Budget < 100] <- "Low"
film$Budget.Size[film$Budget < 150 & film$Budget >= 100] <- "Medium"
film$Budget.Size[film$Budget >= 150] <- "High"
table(film$Budget.Size)

aggregate(Pct.Dom~Budget.Size,film,mean)
boxplot(film$Pct.Dom~film$Budget.Size)
dom_bud_anova <- aov(film$Pct.Dom~film$Budget.Size)
summary(dom_bud_anova)
TukeyHSD(dom_bud_anova)

#Question 2
qf(.95,2,42)

#Question 3
qf(.95,2,15)
