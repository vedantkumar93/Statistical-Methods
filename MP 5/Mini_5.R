data <- read.csv('C:/Users/vedant/Dropbox/utd/Stats/Assignments/MP 5/bodytemp-heartrate.csv')
data <- split(data, data$gender)
male <- data$`1`
female <- data$`2`
boxplot(male$body_temperature, female$body_temperature, 
        main='Boxplot for Body Temperature', xlab='Gender', 
        ylab='Temperature', names = c('Male', 'Female'))

# Accomodating 2 graphs in single space
par(mfrow=c(1,2))
hist(male$body_temperature, main='Male Body Temperature', xlab='Temperature', 
     probability = TRUE)
# Fitting Normal Distribution on Histogram
lines(density(male$body_temperature, adjust = 2))
hist(female$body_temperature, main='Female Body Temperature', xlab='Temperature', 
     probability = TRUE)
lines(density(female$body_temperature, adjust=2))

# Characteristics
summary(male$body_temperature)
summary(female$body_temperature)

par(mfrow=c(1,2))
hist(male$heart_rate, main='Male Heart Rate', xlab = 'Heart Rate', probability = TRUE)
# Another way of fitting Normal Distribution
curve(dnorm(x, mean=mean(male$heart_rate), sd=sd(male$heart_rate)), add = TRUE)
hist(female$heart_rate, main='Female Heart Rate', xlab='Heart Rate', probability = TRUE)
curve(dnorm(x, mean=mean(female$heart_rate), sd=sd(female$heart_rate)), add = TRUE)

summary(male$heart_rate)
summary(female$heart_rate)

data <- read.csv('C:/Users/vedant/Dropbox/utd/Stats/Assignments/MP 5/bodytemp-heartrate.csv')
plot(data$body_temperature, data$heart_rate, xlab='Temperature', ylab='Heart Rate', 
     main='Scatter plot of Heart Rate vs Temperature')
cor(data$body_temperature, data$heart_rate)
par(mfrow=c(1,2))
plot(male$body_temperature, male$heart_rate, xlab='Temperature', ylab='Heart Rate', main='Male')
# Regression Line
abline(lm(male$heart_rate~male$body_temperature), col='blue')
# Non parametric Line
lines(lowess(male$body_temperature, male$heart_rate), col='red')
plot(female$body_temperature, female$heart_rate, xlab='Temperature', ylab='Heart Rate', main='Female')
abline(lm(female$heart_rate~female$body_temperature), col='blue')
lines(lowess(female$body_temperature, female$heart_rate), col='red')

# Correlation
cor(male$body_temperature, male$heart_rate)
cor(female$body_temperature, female$heart_rate)