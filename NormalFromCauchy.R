# Genarting random variables with normal distribution
# using acceptance-rejection method and Cauchy distribution

# Finding optimal c
x = seq(-10, 10, .01)
f = dnorm(x)
g = dcauchy(x)
y = f / g
max(y)

# c = optimize(f=function(x){dnorm(x)/dcauchy(x)}, interval=c(-10, 10), maximum=T)$objective

# Generating numbers
c = 1.6
n = 10000
i = 0	#iterations
j = 0	#counter for accepted
x = numeric(n)	#normal random generations

while (j < n) {
	u = runif(1)
	y = rcauchy(1)
	if (dnorm(y) / (c * dcauchy(y)) > u) {
		j = j + 1
		x[j] = y
	}
	i = i + 1
}
i

N = rnorm(n)
qqplot(x, N)