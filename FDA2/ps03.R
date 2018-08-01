#Sam Smedinghoff
#7/27/18
#Week 3 - Problem Set 3

library(SDSFoundations)
post <- PostSurvey

#Question 1
post$hw_hours_diff <- post$hw_hours_HS - post$hw_hours_college
nursing_hw_diff <- post$hw_hours_diff[post$major=="Nursing"]
bio_hw_diff <- post$hw_hours_diff[post$major == "Biology"]
hist(nursing_hw_diff)
hist(bio_hw_diff)
t.test(nursing_hw_diff,bio_hw_diff)

#Question 2
qt(.95,df=25)

#Question 3
qt(.95,df=15)
left <- c(16.3, 4.8, 10.7, 14.0, 15.7, 9.9, 29.3, 20.4, 15.7, 7.6, 16.2, 14.7, 15.0, 8.4, 23.3, 17.7)
right <- c(11.5,3.5,12.8,7.9,15.2,9.8,24.0,14.9,12.6,8.2,8.4,11.0,12.5,9.2,17.5,11.1)
t.test(left,right,paired=T,alternative='greater')
t.test(left-right,mu=0,alternative='greater')
qt(.975,df=15)
