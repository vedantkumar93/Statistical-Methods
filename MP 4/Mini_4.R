library(boot)
data <- read.csv('C:\\Users\\vedant\\Dropbox\\utd\\Stats\\Assignments\\MP 4\\gpa (1).csv')
plot(data$gpa, data$act, xlab='GPA', ylab='Act', main='Scatter Plot')
n <- length(data$gpa)
statistic <- function(x, i=c(1:n)){
  d <- x[i,]
  return(cor(d$act,d$gpa))
}

# Ordinary Non parametric bootstrap
stat.boot <- boot(data, statistic, R=999, sim='ordinary')
quantile(stat.boot$t, c(0.025, 0.975))

# Bootstrap CI
boot.ci(stat.boot, type='perc', conf=0.95)

# Q2
data <- read.csv('C:\\Users\\vedant\\Dropbox\\utd\\Stats\\Assignments\\MP 4\\VOLTAGE (1).csv')
location_0 <- split(data, data$location)$`0`$voltage
location_1 <- split(data, data$location)$`1`$voltage
par(mfrow=c(1,2))
plot(location_0, ylab='VOltage', ylim = c(7,11), main='Remote: Location 0')
plot(location_1, ylab='Voltage', ylim = c(7,11), main='Local: Location 1')
mean(location_0)
mean(location_1)
sd(location_0)
sd(location_1)
quantile(location_0)
quantile(location_1)

# CI for difference of means with equal and unknown SD assuming Normal Distribution with equal population variances 
x_bar <-mean(location_0)
y_bar <- mean(location_1)
sx <- sd(location_0)
sy <- sd(location_1)
n <- length(location_0)
m <- length(location_1)
sp <- sqrt((n-1)*sx*sx+(m-1)*sy*sy/(n+m-2))
alpha <- 1-0.95 # 95% CI
t <- qt(1-(alpha/2), df=(n+m-2))
(x_bar-y_bar) + c(-1,1)*t*sp*sqrt((1/n)+(1/m))