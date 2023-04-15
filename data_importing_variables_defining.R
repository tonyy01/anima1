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
state_t <- 0.001
min_ms <- min_rt / state_t # state_t stands for the time between states. The animation is interpolating and fitting by states of the bars in the bar chart, and the state_t is default to 0.001 
# second, the minimum precision stardardized by World Athlete. still, you can change this number as you wish to get a different effect or to save rendering time. 
distance <- c(rep(0, n_athelete * min_ms), 0) # plus 1 to min_ms since 0 is also 
# considered
time <- NULL
s <- n_athelete_0
t <- n_athelete_0
athlete <- splits |> 
  pull(Athlete)
finished_athlete <- NULL
