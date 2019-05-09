
# Read the Jane data

jane <- read.table("jane.csv", sep=",", header=T)

> str(jane)
'data.frame':	150 obs. of  3 variables:
 $ x    : int  1 1 1 2 2 2 3 3 3 4 ...
 $ color: Factor w/ 3 levels "blue","green",..: 3 1 2 3 1 2 3 1 2 3 ...
 $ y    : num  24.9 12.3 16.6 25.2 12.1 ...
> 
attach(jane)

> table(color)
color
 blue green   red 
   50    50    50 
> 


# Include both x and color as predictors

fit1 <- lm(y~x+color)



# Note: color is already a factor variable. If this is numeric, then
# we need to write: fit1 <- lm(y~ x + factor(color))



> summary(fit1)

Call:
lm(formula = y ~ x + color)

Residuals:
     Min       1Q   Median       3Q      Max 
-14.2398  -2.9939   0.1725   3.5555  11.9747 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 13.16989    1.01710  12.948  < 2e-16 ***
x            1.00344    0.02848  35.227  < 2e-16 ***
colorgreen   2.12586    1.00688   2.111   0.0364 *  
colorred     6.60586    1.00688   6.561  8.7e-10 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 

Residual standard error: 5.034 on 146 degrees of freedom
Multiple R-squared: 0.898,	Adjusted R-squared: 0.8959 
F-statistic: 428.6 on 3 and 146 DF,  p-value: < 2.2e-16 

> 

# Is color significant?

fit2 <- lm(y~x)

> anova(fit2, fit1)
Analysis of Variance Table

Model 1: y ~ x
Model 2: y ~ x + color
  Res.Df    RSS Df Sum of Sq      F    Pr(>F)    
1    148 4837.5                                  
2    146 3700.4  2    1137.1 22.433 3.197e-09 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 
> 



