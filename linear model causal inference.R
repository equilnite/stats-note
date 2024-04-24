# homoscedastic and normal
# normally distributed residuals

fun = function(x) {2*x + 1}

x = rnorm(500)
y = fun(x) + rnorm(500)

plot(x, y)


hist(y)
hist(x)

lslr <- lm(y~x)

hist(lslr$residuals)

plot(lslr)

# homoscedastic but not normal
# uniformly distributed residuals

fun = function(x) {2*x + 1}

x = rnorm(500)
y = fun(x) + runif(500)

plot(x, y)

hist(y)
hist(x)

lslr <- lm(y~x)

hist(lslr$residuals)

plot(lslr)

# heteroscedastic
# log normal distributed residuals

fun = function(x) {2*x + 1}

x = rnorm(500)
y = fun(x) + rlnorm(500, mean = 1, sd = 0.5)


plot(x, y)

hist(y)
hist(x)

lslr <- lm(y~x)

hist(lslr$residuals)

plot(lslr)

# not linear
# skewed residuals

fun = function(x) {2*x^2 + 1}

x = rnorm(500)

y = fun(x) + rnorm(500, sd = 2)

plot(x, y)

hist(y)
hist(x)

lslr <- lm(y~x)

hist(lslr$residuals)

plot(lslr)

