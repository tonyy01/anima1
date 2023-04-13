distance$athlete <- distance |> 
  pull(athlete) |> 
  factor(levels = distance$athlete[1:8])
ggplot(data = distance, aes(distance, athlete)) +
  geom_col() + 
  theme(panel.background = element_rect(fill = "darkblue")) +
  scale_x_continuous(n.breaks = 10) +
  transition_states(time, transition_length = 0.1, state_length = 0) +
  labs(title = "{closest_state}s") |> 
  anim_save(
    filename = file.choose(),
    fps = 60,
    duration = 10,
    device = "png",
    renderer = av_renderer(),
    width = 1280,
    height = 200
  )
