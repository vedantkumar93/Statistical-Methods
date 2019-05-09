
# These data come from a sample of homes sold in Maplewood, NJ in 2001.


# Read the home price data

home <- read.table("homeprice_multiple_predictors.txt", sep=",", header=T)

str(home)

# Attach the dataset in R's memory so that we can
# directly use the names of the variables

attach(home)

# Look at distribution of some predictors

plot(sale ~ bedrooms, data = home)
table(bedrooms)
table(full)
table(half)
table(neighborhood)



# Regress sale price on # bedrooms and neighborhood

fit1 <- lm(sale ~ bedrooms + neighborhood)

summary(fit1)

# Add # full and half baths


fit2 <- update(fit1, . ~ . + full + half)

summary(fit2)

# Drop # full baths

fit3 <- update(fit2, . ~ . - full)

summary(fit3)

# Compare the nested models

# Note: Be sure in comparing more than two models using anova function
# as the MS(ERR) comes from the largest model --- this may or may not 
# be what you want --- check ?anova.lm

anova(fit3, fit2)

anova(fit1, fit3, fit2)

anova(fit1, fit2)



# Residual plot

plot(fitted(fit3), resid(fit3))
abline(h=0)

# QQ plot

qqnorm(resid(fit3))
qqline(resid(fit3))
   
# Take sqrt(sale) rather than sale as response

fit4 <- update(fit3, sqrt(sale) ~ .)

                                  
# New QQ plot

qqnorm(resid(fit4))
qqline(resid(fit4))
   

plot(fitted(fit4), resid(fit4))


	
