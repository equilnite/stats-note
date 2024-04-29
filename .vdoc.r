#
#
#
library(tidyverse)
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
library(ggplot2)

ggplot() + xlim(-4,4) +
    geom_polygon(aes(x = c(-2, seq(-2,2,0.01), 2), 
                     y = c(0, dnorm(seq(-2, 2, 0.01)), 0)), 
                 alpha = 0.5) +
    stat_function(fun = dnorm, size = 1.2, n = 1000) + theme_void() +
    annotate("segment", x = -2, xend = -2, y = -.01, yend = .01, size = 1.1) + 
    annotate("text", x = -2, y = -.025, label = expression(paste('-|', z^'*', '|'))) +
    annotate("segment", x = 2, xend = 2, y = -.01, yend = .01, size = 1.1) + 
    annotate("text", x = 2, y = -.025, label = expression(paste('|', z^'*', '|'))) +
    annotate("segment", x = -2.5, y = .2, xend = -1.5, yend = .05, arrow = arrow(), size = 1.1) +
    annotate("text", x = -2.5, y = 0.225, label =  "Confidence Level C")
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#