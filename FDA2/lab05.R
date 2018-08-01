#Sam Smedinghoff
#7/31/18
#Week 5 - Problem Set 5

library(SDSFoundations)
film <- FilmData

#Question 1
table(film$Studio)
aggregate(Days~Studio,film,mean)

studio_days_anova <- aov(film$Days~film$Studio)
summary(studio_days_anova)
TukeyHSD(studio_days_anova)

#Question 2
aggregate(Pct.Dom~Studio,film,mean)
studio_domper_anova <- aov(film$Pct.Dom~film$Studio)
summary(studio_domper_anova)
TukeyHSD(studio_domper_anova)

boxplot(film$Pct.Dom~film$Studio)
