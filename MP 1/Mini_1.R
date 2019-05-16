# Test 1, Sample 10000
pdf.T <- function(x){
  return (0.2*exp(-0.1*x)-0.2*exp(-0.2*x))
}
x10k = replicate(10000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x10k)
curve(pdf.T)
mean(x10k)
1-pexp(15, rate = 1/mean(x10k))

#Test 2
x10k = replicate(10000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x10k)
mean(x10k)
1-pexp(15, rate = 1/mean(x10k))

#Test 3
x10k = replicate(10000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x10k)
mean(x10k)
1-pexp(15, rate = 1/mean(x10k))

#Test 4
x10k = replicate(10000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x10k)
mean(x10k)
1-pexp(15, rate = 1/mean(x10k))

#Test 5
x10k = replicate(10000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x10k)
mean(x10k)
1-pexp(15, rate = 1/mean(x10k))

#Test 1, Sample 1000
x1k = replicate(1000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x1k)
mean(x1k)
1-pexp(15, rate = 1/mean(x1k))

#Test 2
x1k = replicate(1000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x1k)
mean(x1k)
1-pexp(15, rate = 1/mean(x1k))

#Test 3
x1k = replicate(1000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x1k)
mean(x1k)
1-pexp(15, rate = 1/mean(x1k))

#Test 4
x1k = replicate(1000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x1k)
mean(x1k)
1-pexp(15, rate = 1/mean(x1k))

#Test 5
x1k = replicate(1000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x1k)
mean(x1k)
1-pexp(15, rate = 1/mean(x1k))

#Test 1, Sample 100000
x1k = replicate(100000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x100k)
mean(x100k)
1-pexp(15, rate = 1/mean(x100k))


#Test 2
x1k = replicate(100000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x100k)
mean(x100k)
1-pexp(15, rate = 1/mean(x100k))

#Test 3
x1k = replicate(100000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x100k)
mean(x100k)
1-pexp(15, rate = 1/mean(x100k))

#Test 4
x1k = replicate(100000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x100k)
mean(x100k)
1-pexp(15, rate = 1/mean(x100k))

#Test 5
x1k = replicate(100000, max(rexp(n=1, rate=1/10), rexp(n=1,rate=1/10)))
hist(x=x100k)
mean(x100k)
1-pexp(15, rate = 1/mean(x100k))

# Q2
runs <- 10000
x <- runif(runs, min=0, max=1)
y <- runif(runs, min=0, max=1)
in.circle <- (x-0.5)^2 + (y-0.5)^2 <= 0.5^2
mc.pi <- (sum(in.circle)/runs)*4
mc.pi