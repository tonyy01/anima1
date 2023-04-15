a <- n_athelete_0
v0 <- n_athelete_0
v1 <- n_athelete_0
total_t <- splits |> 
  pull(`100`) |> 
  max()
for (i in 0:(total_t / state_t)) {
  time <- c(time, rep(state_t * i, n_athelete))
  i_over_1000 <- i / (1/state_t)
  if (i > min_ms) {
    for (j in 1:n_athelete) {
      if (athlete[j] %in% finished_athlete) next
      if (rt[j] <= i_over_1000) {
        s[j] <- s[j] + v0[j] * state_t + 1 / 2 * a[j] * state_t^2
        if (s[j] > 100) {
          s[j] <- 100
          finished_athlete <- c(finished_athlete, athlete[j])
          next
        }
        v1[j] <- v0[j] + a[j] * state_t
        v0[j] <- v1[j]
      }
      split_current <- s %/% 10 # check which split the athlete is in
      if (split_current[j] != split[j]) { # if the current split exceeds the 
      # former split, former split should be the current split, and the 
      # acceleration rate should be changed too
        split[j] <- split_current[j] 
        s_exceeded <- s[j] %% 10
        t[j] <- splits[j, split[j] + 3][[1]] - splits[j, split[j] + 2][[1]]
        a[j] <- 2 * ((10-s_exceeded) - v0[j] * t[j]) / t[j]^2
      }
    }
  distance <- c(distance, s)
  }
}
athlete_distance <- athlete |> 
  rep(total_t / state_t + 1)
distance <- tibble(time = time, athlete = athlete_distance, distance = distance)
