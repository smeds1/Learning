#Sam Smedinghoff
#8/1/18
#Week 6 - Problem Set 6

#Question 1
library(SDSFoundations)
res <- TempskiResilience
clin <- res[res$Group == "Clinical Sciences",]

#Intial Correlations
vars <- c("BDI", "Female", "Age", "State.Anxiety", "Trait.anxiety")
cor(clin[,vars])

ms_mod <- lm(BDI ~ State.Anxiety + Trait.anxiety + Female + Age, data=clin)
summary(ms_mod)

lmBeta(ms_mod) 
round(pCorr(ms_mod), 4) 

#Question 2
qt((1-.0824/2),df=18)

