####################################################################
# computer account example
# (two-sided test)
####################################################################

n <- 15
tstat <- (0.3-0.2)/(0.12/sqrt(n))

# > tstat
# [1] 3.227486
# >

# using p-value

pval <- 2*(1-pt(abs(tstat), n-1))

# > pval
# [1] 0.006078955
# > 

# Since p-value <= 0.05, we reject H0. There is statistically significant evidence 
# that the login attempt is unauthorized.

# using critical point


# > qt(0.975, n-1)
# [1] 2.144787
# > 

# Since abs(tstat) > 2.144, reject H0. Conclusion is same as before.

####################################################################
# marketing campaign
# (right-tailed test)
####################################################################

zstat <- (5200-5000)/(800/sqrt(100))

# > zstat
# [1] 2.5
# >

# using p-value

pval <- 1-pnorm(zstat)

# > pval
# [1] 0.006209665
# > 

# Since p-value <= 0.05, reject H0. There is statistically significant evidencce
# that the campaign is successful.

# using critical point

# >  # [1] 1.644854
# > 

# Since zstat > 1.645, reject H0. Conclusion same as before.

####################################################################
# polling
# (left-tailed test)
####################################################################


zstat <- (0.31 - 0.30)/(sqrt(0.31*(1-0.31)/1000))

# > zstat
# [1] 0.6837457
# > 

# using p-value

pval <- pnorm(zstat)

# > pval
# [1] 0.7529321
# > 

# Since p-value > 0.05, accept H0. There is no statistically significant evidence 
# that less 30% of American people approve the performance of the congress.

# using critical point

# > qnorm(0.05)
# [1] -1.644854
# >

# Since zstat > -1.645, accept H0. Same conclusion as before.

####################################################################


