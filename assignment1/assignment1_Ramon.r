# -- Exercise 1a --

# Load data
birthweight=read.table("birthweight.txt",header=TRUE)
birthweight = birthweight$birthweight

# Check normality of data
qqnorm(birthweight)
shapiro.test(birthweight)
# p > 0.05 thus assumption normality met

# point estimate == mean
summary(birthweight)

# bounded 90% CI for mu
t.test(birthweight, conf.level=0.90)

# -- Exercise 1b --
t.test(birthweight, mu = 2800, conf.level=0.1, alternative = "greater")

# an alpha of 0.1 corresponds with significance if p<0.1
# we thus can conclude that with the current t-test an alpha > 0.01357 would indicate significance

# -- Exercise 1c --
# The confidence interval is different because the test
# is one-sided (we only test for mu>2800), thus the upper
# bound of the CI is infinite.




