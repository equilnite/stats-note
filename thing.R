dice <- c(12,28,12,13,10,15)

chisq.test(dice)

harvard <- c(432, 247, 226, 1118)
harvard.null <- c(.575, .031, .008, 0.387)

chisq.test(harvard, p = harvard.null, rescale.p = TRUE)$expected
