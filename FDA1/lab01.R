# Find the number of daily riders in the dataset
table(bike$cyc_freq)

# Pull out daily riders data into a new dataframe
daily <-bike[bike$cyc_freq=="Daily",]

# Find how many daily riders are male
table(daily$gender)

# Create a vector for the age variable
age <-daily$age

# Find average age of the daily riders
mean(age)

#daily riders by gender
male_daily_riders <-daily[daily$gender=="M",]
female_daily_riders <-daily[daily$gender=="F",]
mean(female_daily_riders$age)
mean(male_daily_riders$age)

#male daily riders over 30
over_30 <-male_daily_riders[male_daily_riders$age >=30,]
