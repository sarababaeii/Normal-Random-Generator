# Genarting random variables with normal distribution
# using acceptance-rejection method and lLaplace distribution
# package rmutil is needed

# Finding optimal c
x = seq(0, 100, .1)
f = dnorm(x)
g = dlaplace(x)
y = f / g
max(y)

# Generating numbers
c = 1.4
n = 10000
i = 0	#iterations
j = 0	#counter for accepted
x = numeric(n)	#normal random generations

while (j < n) {
	u = runif(1)
	y = rlaplace(1)
	if (dnorm(y) / (c * dlaplace(y)) > u) {
		j = j + 1
		x[j] = y
	}
	i = i + 1
}
i
