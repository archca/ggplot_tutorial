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

b <- m +
  geom_bar(aes(x=fibula_scheme,
               fill=factor(Coils)))

b

factor(muensingen$Coils)

m + geom_bar(aes(x=1,
                 fill=factor(Coils)))

## Bar plot with percentations

r <- data.frame(prop.table(table(muensingen$Coils)))

ggplot(r) + geom_bar(aes(x=1, y=Freq, fill= Var1),
                     position = "fill",stat = "identity")


