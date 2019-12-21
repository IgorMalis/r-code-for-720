# Generate random vectors
set.seed(720)
v1 <- runif(10)
v2 <- runif(10)

# Correlation
cor(v1,v2) 

# Covariance
cov(v1,v2)

# Covariance/dispersion matrix
c = cov(cbind(v1,v2))