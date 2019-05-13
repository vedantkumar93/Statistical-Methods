n <- c(1,2,3,5,10,30)
theta <- c(1,5,50,100)
N <- 1000
for(each_theta in theta){
  mse1 <- c()
  mse2 <- c()
  for(each_n in n){
    sample_set <- replicate(N, runif(each_n, 0, each_theta))
    theta1 <- max(sample_set)
    theta2 <- 2*mean(sample_set)
    mse1 <- append(mse1, mean((theta1 - sample_set) ** 2))
    mse2 <- append(mse2, mean((theta2 - sample_set) ** 2))
  }
  plot(n, mse1, type='b', col='blue', ylab='MSE', main=c('Theta=', each_theta))
  lines(n, mse2, type='b', col='red')
}

# Q2
x <- c(21.72, 14.65, 50.42, 28.78, 11.23)
likelihood <- function(par, dat){
  n <- length(dat)
  logl <- n*log(par) - (par+1)*sum(log(dat))
  return (-logl)
}
ml.est <- optim(par = 1, fn=likelihood, method = 'BFGS', hessian = T, dat=x)
ml.est$par

se <- (1/ml.est$hessian)^0.5
# CI
ml.est$par + c(-1,1)*se*qnorm(0.975)
