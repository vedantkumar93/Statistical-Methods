install.packages("dplyr")
library(dplyr)
roadrace <- read.csv('C:\\Users\\vedant\\Dropbox\\utd\\Stats\\Assignments\\MP 2\\roadrace.csv')
residenceCount <- roadrace %>% group_by(Maine) %>% tally
barplot(residenceCount$n, main='Bar Graph of Maine Residence', xlab='Residence', names.arg = residenceCount$Maine)

roadrace <- read.csv('C:\\Users\\vedant\\Dropbox\\utd\\Stats\\Assignments\\MP 2\\roadrace.csv')
roadrace <- split(roadrace, roadrace$Maine)
par(mfrow=c(1,2))
hist(roadrace[[1]]$Time..minutes., main='Runners Time of Non Maine Residence', xlab='Runners Time(in minutes)', ylim=c(0,1600))
hist(roadrace[[2]]$Time..minutes., main='Runners Time of Maine Residence', xlab='Runners Time(in minutes)', ylim=c(0,1600))

boxplot(roadrace[[1]]$Time..minutes., roadrace[[2]]$Time..minutes., main = 'Boxplot for Runners Time', names= c('Away', 'Maine'), xlab='Residence', ylab='Runners Time in minutes')

roadrace <- read.csv('C:\\Users\\vedant\\Dropbox\\utd\\Stats\\Assignments\\MP 2\\roadrace.csv')
roadrace <- split(roadrace, roadrace$Sex)
boxplot(as.numeric(roadrace[[2]]$Age), as.numeric(roadrace[[3]]$Age), main='Boxplotfor Age of Runners vs Sex', xlab='Sex', ylab='Age', names = c('F', 'M'))

# Q2
motor <- read.csv('motorcycle.csv')
boxplot(motor$Fatal.Motorcycle.Accidents, 
        main='Boxplot for Motorcycle Accidents of South Carolina', 
        ylab = 'Number of accidents')