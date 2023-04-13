library(tidyverse)

splits <- read_csv(file.choose())
distance <- c()
time <- c()
n_athelete <- nrow(splits)
n_athelete_0 <- rep(0, n_athelete)
split <- rep(-1, n_athelete)
s <- n_athelete_0
t <- n_athelete_0