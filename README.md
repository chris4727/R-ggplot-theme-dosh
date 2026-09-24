# Ggplot2 theme for WA DOSH

Ggplot2 theme to match WA DOSH graphic identity

## Useage

1. Save the theme script in `code/00-ggplot-theme-dosh.R`
2. Source the function with `source("./code/00-ggplot-theme-dosh.R")`
3. Call the theme in your ggplot with `theme_dosh()`
4. Alternatively, apply the theme to all plots with
   `theme_set(theme_dosh())`
5. Use the `colors_lni` vector to apply colors to a chart.

## Example:

```R
library(ggplot2)
mpg |> 
  ggplot(aes(x = displ, y = hwy)) +
    geom_point(aes(color = class)) +
    geom_smooth(
      # Select the 1st color (blue) from colors_lni
      color = colors_lni[1],
      se = FALSE) +
    labs(
      title = "Fuel efficiency",
      subtitle = "By vehicle class, and engine size",
      caption = "Visualization from R for Data Science 2e",
      x = NULL,
      y = NULL
    ) +
    # Apply theme_dosh
    theme_dosh()
```
Example 1:
![](./figures/plot-ex.png)

Example 2:
![](./figures/plot-ex2.png)

