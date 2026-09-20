theme_dosh <- function() {
  # Set base theme and font family =============================================
  theme_minimal(
    base_family = "Libre Franklin"
  ) +
    # Overwrite base theme defaults ============================================
  theme(
    # Text elements ==========================================================
    plot.title = element_text(
      size = 18,
      face = "bold",
      color = "#333333",
      margin = margin(b = 10)
    ),
    plot.subtitle = element_text(
      size = 14,
      color = "#999999",
      margin = margin(b = 10)
    ),
    plot.caption = element_text(
      size = 13,
      color = "#777777",
      margin = margin(t = 15),
      hjust = 0
    ),
    axis.text = element_text(
      size = 11,
      color = "#333333"
    ),
    plot.title.position = "plot",
    plot.caption.position = "plot",
    # Line elements ==========================================================
    panel.grid.minor = element_blank(),
    panel.grid.major = element_line(
      linetype = "dashed",
      linewidth = 0.15,
      color = "#999999"
    ),
    panel.grid.major.x = element_blank(),
    axis.ticks.x = element_line(
      linetype = "solid",
      linewidth = 0.25,
      color = "#999999"
    ),
    axis.ticks.length.x = unit(4, units = "pt")
  )  
}
