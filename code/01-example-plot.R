library(tidyverse)
library(ggplot2)
library(systemfonts)

source("./code/00-ggplot-theme-dosh.R")
theme_set(theme_dosh())

# SYSTEM FONTS ------------------------------------------------------------

#fonts <- system_fonts() |> 
#  select(!c(path, index)) |> 
#  mutate(
#    style = case_when(
#      str_detect(family, regex("Serif", ignore_case = TRUE)) ~ "serif",
#      str_detect(family, regex("Sans", ignore_case = TRUE)) ~ "sans",
#    )
#  )

## FONT SEARCH
#fonts |> 
#  filter(
#    str_detect(family, regex("SEARCH", ignore_case = TRUE))
#  )

# EXAMPLE CHART -----------------------------------------------------------

# Example taken from R for Data Science 2e 11.5
# https://r4ds.hadley.nz/communication.html#sec-themes
plot1 <- mpg |> 
  ggplot(aes(x = displ, y = hwy)) +
    geom_point(aes(color = class)) +
    geom_smooth(se = FALSE) +
    labs(
      title = "Fuel efficiency",
      subtitle = "By vehicle class, and engine size",
      caption = "Visualization from R for Data Science 2e",
      x = NULL,
      y = NULL
    )

# Example taken from R for the rest of us: Ggplot theme
# https://rfortherestofus.com/2025/04/ggplot2-theme
plot2 <- ggplot(economics, aes(date, unemploy)) +
  labs(
    title = "Unemployed persons in the United States",
    subtitle = "Monthly aggregation from 1967 - 2015",
    caption = "Data source: {ggplot2} R package",
    x = NULL,
    y = NULL
  ) +
  # Unemployment level is number of unemployed in thousands.
  # This declutters the figure by presenting the number of
  # unemployed in millions
  scale_y_continuous(
    labels = scales::label_number(
      scale = 0.001,
      suffix = " M"
    ),
    limits = c(0, max(economics$unemploy))
  )

# SAVE FIGURE -------------------------------------------------------------

ggsave("./figures/plot-ex.png",
       plot = plot1,
       #width = 1280,
       #height = 640,
       #units = "px"
       )

ggsave("./figures/plot-ex2.png",
       plot = plot2,
       #width = 1280,
       #height = 640,
       #units = "px"
       )
