#setwd('~/Documents/project/')
# Download the “Heart Disease” dataset from https://archive.ics.uci.edu/ml/datasets/Heart+Disease
# Add headers, rename to .csv
data = read.csv('processed.cleveland.data.csv', header = TRUE, sep = ",")
typeof(data)
dim(data)
data <- data[-14]
dim(data)
pairs(data)