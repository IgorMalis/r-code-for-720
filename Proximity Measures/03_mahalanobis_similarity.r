# Generate random points from bivariate normal distribution
mu1 <- 1; s1 <- 2 
mu2 <- 1; s2 <- 8
rho <- -0.6
mu <- c(mu1,mu2) # centre
# Define covariance matrix
sigma <- matrix(c(s1^2, s1*s2*rho, s1*s2*rho, s2^2), 2) # must be positive definite!
N=200
set.seed(720)
points <- mvrnorm(N, mu = mu, Sigma = sigma )

# Plot them & mean
plot(points)
points(mu1, mu2, type='p', pch=4, col='red', cex=2, lwd=4)

# 2 examples
p1 <- c(-2, 15)
points(p1[1], p1[2], type='p', pch=2, col='blue', cex=2, lwd=4)
mahalanobis(p1, mu, sigma) 

p2 <- c(4, 12)
points(p2[1], p2[2], type='p', pch=3, col='green', cex=2, lwd=4)
mahalanobis(p2, mu, sigma) 