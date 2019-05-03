# change the directory
data <- read.csv('C:/Users/vedant/Downloads/prostate_cancer.csv')

# attaches all columns of data as variables
attach(data)

# changing variable into labels 
vesinv <- factor(vesinv)

# model with full parameters (most complex)
prog.lm.full <- lm(psa ~ cancervol + weight + age + 
                benpros + vesinv + capspen + gleason)

# model with only intercept (most simple)
prog.lm.start <- lm(psa ~ 1)

library(MASS)

# Using AIC Backward algorithm to find most specific model
prog.lm.backstep <- stepAIC(prog.lm.full, trace=0) # trace the model

# Using AIC Forward algorithm to find most specific model
prog.lm.forstep <- stepAIC(prog.lm.start, trace=0,
  scope=list(lower=~1,upper=~cancervol + weight + age + 
               benpros + vesinv + capspen + gleason),
                           direction="forward")

# summary of all models
summary(prog.lm.backstep)
summary(prog.lm.forstep)
summary(prog.lm.full)

# finding psa based on average value of cancervol and most used factor
x.new <- data.frame(cancervol=mean(cancervol), vesinv=factor(0))

# predicting the psa based on predictors
predict(prog.lm.backstep, newdata=x.new)