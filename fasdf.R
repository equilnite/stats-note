library(ggplot2)
library(gridExtra)


p1 = ggplot() + xlim(-4,4) +
    geom_polygon(aes(x = c(1, seq(1,4,0.01), 4),
                     y = c(0, dnorm(seq(1, 4, 0.01)), 0)),
                 alpha = 0.5) +
    stat_function(fun = dnorm, size = 0.5, n = 1000) + theme_void() +
    annotate("segment", x = 1, xend = 1, y = -.01, yend = .01, size = .5) +
    annotate("segment", x = -4, xend = 4, y = 0, yend = 0, size = .5) +
    annotate("text", x = 1, y = -.025, label = "z", size = 2.5) +
    theme(
        panel.background = element_rect(fill='transparent'), #transparent panel bg
        plot.background = element_rect(fill='transparent', color=NA), #transparent plot bg
        panel.grid.major = element_blank(), #remove major gridlines
        panel.grid.minor = element_blank(), #remove minor gridlines
        legend.background = element_rect(fill='transparent'), #transparent legend bg
        legend.box.background = element_rect(fill='transparent') #transparent legend panel
    )

p2 = ggplot() + xlim(-4,4) +
    geom_polygon(aes(x = c(-4, seq(-4,-1,0.01), -1),
                     y = c(0, dnorm(seq(-4, -1, 0.01)), 0)),
                 alpha = 0.5) +
    stat_function(fun = dnorm, size = 0.5, n = 1000) + theme_void() +
    annotate("segment", x = -1, xend = -1, y = -.01, yend = .01, size = 0.5) +
    annotate("segment", x = -4, xend = 4, y = 0, yend = 0, size = 0.5) +
    annotate("text", x = -1, y = -.025, label = "z", size = 2.5)+
    theme(
        panel.background = element_rect(fill='transparent'), #transparent panel bg
        plot.background = element_rect(fill='transparent', color=NA), #transparent plot bg
        panel.grid.major = element_blank(), #remove major gridlines
        panel.grid.minor = element_blank(), #remove minor gridlines
        legend.background = element_rect(fill='transparent'), #transparent legend bg
        legend.box.background = element_rect(fill='transparent') #transparent legend panel
    )

p3 = ggplot() + xlim(-4,4) +
    geom_polygon(aes(x = c(-4, seq(-4,-1,0.01), -1),
                     y = c(0, dnorm(seq(-4, -1, 0.01)), 0)),
                 alpha = 0.5) +
    geom_polygon(aes(x = c(1, seq(1,4,0.01), 4),
                     y = c(0, dnorm(seq(1, 4, 0.01)), 0)),
                 alpha = 0.5) +
    stat_function(fun = dnorm, size =  0.5, n = 1000) + theme_void() +
    annotate("segment", x = -1, xend = -1, y = -.01, yend = .01, size =  0.5) +
    annotate("segment", x = 1, xend = 1, y = -.01, yend = .01, size =  0.5) +
    annotate("segment", x = -4, xend = 4, y = 0, yend = 0, size =  0.5) +
    annotate("text", x = -1, y = -.025, label = "-|z|", size = 2.5) +
    annotate("text", x = 1, y = -.025, label = "|z|", size = 2.5)+
    theme(
        panel.background = element_rect(fill='transparent'), #transparent panel bg
        plot.background = element_rect(fill='transparent', color=NA), #transparent plot bg
        panel.grid.major = element_blank(), #remove major gridlines
        panel.grid.minor = element_blank(), #remove minor gridlines
        legend.background = element_rect(fill='transparent'), #transparent legend bg
        legend.box.background = element_rect(fill='transparent') #transparent legend panel
    )


fp = grid.arrange(p1, p2, p3, nrow=1)

ggsave("testing.png", fp, bg = "transparent", width = 1400, height = 300, units = "px")


