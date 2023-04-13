library(tidyverse)
library(gganimate)

splits <- read_csv(file.choose())
n_athelete <- nrow(splits)
n_athelete_0 <- rep(0, n_athelete)
split <- n_athelete_0
rt <- splits |> 
  pull(RT)
min_rt <- min(rt)
max_rt <- max(rt)
min_ms <- min_rt / 0.001
distance <- c(rep(0, n_athelete * min_ms), 0) # plus 1 to min_ms since 0 is also 
# considered
time <- NULL
s <- n_athelete_0
t <- n_athelete_0
athlete <- splits |> 
  pull(Athlete)
finished_athlete <- NULL
