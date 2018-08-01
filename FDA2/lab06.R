#Sam Smedinghoff
#8/1/18
#Week 6 - Lab 6

library(SDSFoundations)
res <- TempskiResilience
bs <- res[res$Group == "Basic Sciences",]

#Intial Correlations
vars <- c("MS.QoL", "WHOQOL.PH", "WHOQOL.PSY", "WHOQOL.SOC", "WHOQOL.ENV")
cor(bs[,vars])


ms_mod <- lm(MS.QoL ~ WHOQOL.PH + WHOQOL.PSY + WHOQOL.SOC + WHOQOL.ENV, data=bs)
summary(ms_mod)

lmBeta(ms_mod) 
round(pCorr(ms_mod), 4) 