#Sam Smedinghoff
#7/27/18
#Week 3 - Lab 3

library(SDSFoundations)
post <- PostSurvey

#Question 1
post$hw_hours_diff <- post$hw_hours_HS - post$hw_hours_college
hist(post$hw_hours_diff)
t.test(post$hw_hours_HS,post$hw_hours_college,paired=T,alternative='less')

#Question 2
sleep_greek <- post$sleep_Sat[post$greek == 'yes']
sleep_nongreek <- post$sleep_Sat[post$greek == 'no']
t.test(sleep_greek,sleep_nongreek,alternative='less')
hist(sleep_greek)
hist(sleep_nongreek)
