# Generate random vectors
set.seed(720)
v1 <- runif(10)
v2 <- runif(10)
x <- rbind(v1,v2)


# Euclidean distance
library('philentropy')
euclidean <- distance(x, method = "euclidean")

# Minkowski distance
#p=1: Manhattan distance (L1 norm)
minkowski_dist <- distance(x, method = 'minkowski', p=1)

#p=2: Euclidean distance (L2 norm)
minkowski_dist <- distance(x, method = 'minkowski', p=2)