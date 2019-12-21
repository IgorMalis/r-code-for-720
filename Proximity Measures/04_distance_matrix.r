# Generate 5 random points
set.seed(720)
p <- cbind(runif(5), runif(5))

# Euclidean Distance Matrix
d <- dist (p, method = "euclidean")

# Minkowski Distance Matrix
l1 = dist (p, method = "minkowski", p=1)