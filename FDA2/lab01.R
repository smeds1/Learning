#Sam Smedinghoff
#7/25/18
#Week 1 - Lab01

library(SDSFoundations)
survey <- StudentSurvey

hist(survey$happy)
mean(survey$happy)
sd(survey$happy)

#samples of size 5
means5 <- rep(NA,1000)
for (i in 1:1000){
  x <- sample(survey$happy,size=5)
  means5[i] <- mean(x)
}

hist(means5)
mean(means5)
sd(means5)

#samples of size 15
means15 <- rep(NA,1000)
for (i in 1:1000){
  x <- sample(survey$happy,size=15)
  means15[i] <- mean(x)
}

hist(means15)
mean(means15)
sd(means15)

#samples of size 25
means25 <- rep(NA,1000)
for (i in 1:1000){
  x <- sample(survey$happy,size=25)
  means25[i] <- mean(x)
}

hist(means25)
mean(means25)
sd(means25)