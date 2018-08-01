#Sam Smedinghoff
#7/25/18
#Week 1 - Problem Set 1

library(SDSFoundations)
survey <- StudentSurvey

#question 1
hist(survey$austin)
mean(survey$austin)
sd(survey$austin)

means10 <- rep(NA,1000)
for (i in 1:1000){
  means10[i] = mean(sample(survey$austin,10))
}

hist(means10)
mean(means10)
sd(means10)

#question 2
z <- (3.2-3.08)/.4
1-pnorm(z)

z1 <- (3.2-3.08)/(.4/5)
z2 <- (2.9-3.08)/(.4/5)
pnorm(z1)-pnorm(z2)