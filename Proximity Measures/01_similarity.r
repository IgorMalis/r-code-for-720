# Generate random vectors
set.seed(720)
v1 <- runif(10)
v2 <- runif(10)
x <- rbind(v1,v2)

# Compute cosine similarity
library('philentropy')
cosine_similarity <- distance(x, method = 'cosine')

# Compute Jaccard similarity
jaccard_similarity <- distance(x, method = 'jaccard')

# Compute Tanimoto similarity
tanimoto_similarity <- distance(x, method = 'tanimoto')