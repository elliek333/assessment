# Title: A custom geom theme function
# 
# Features:
# Inward Tick Marks
# Black Plot Border
# No Grid
# Georgia font
# No Background
# Legend at the bottom
# All text size 8, title texts are bold
# (axis text, legend text)
#
# How to use:
# + theme_itm() to any ggplot
# 
# Example:
# 
# Library(ggplot)
# ggplot(diamonds, aes(x=carat, y=price)) + geom_point(aes(color=cut)) +
# theme_itm()
theme_itm <- function(){ 
  theme_classic() %+replace%
    theme(panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(), 
          text = element_text(family="Georgia"),
          axis.title.x = element_text(size = 8, face = "bold"),
          axis.text.x = element_text(size = 8, margin = 
                                       unit(c(t = 2.5, r = 0, b = 0, l = 0), "mm")),
          axis.title.y = element_text(size = 8, face = "bold"),
          axis.text.y = element_text(size = 8, margin = 
                                       unit(c(t = 0, r = 2.5, b = 0, l = 0), "mm")),
          axis.ticks.length = unit(-1.4, "mm"),
          axis.ticks = element_line(size = .3),
          plot.background = element_rect(colour = "black"),
          plot.title = element_text(size = 8, face = "bold"),
          legend.position = "bottom",
          legend.background = element_rect(colour = "white"),
          legend.title = element_text(size = 8, face = "bold"),
          legend.text = element_text(size = 8, face = "plain")
    )
}