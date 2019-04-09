library(ggplot2)
library(ggthemes)

muensingen <- read.csv2("muensingen_fib.csv")

## scatterplot

plot(muensingen$Length,muensingen$FL)

m <- ggplot(data=muensingen)

m + geom_point(aes(x=Length, y=FL)) +
  ylab("Foot Length") + ggtitle("SuperDuperPlot")

## barplot

plot(muensingen$fibula_scheme)

b <- m + geom_bar(aes(x=fibula_scheme))

b

b + ggtitle("Plot 2")

