library(forecast)
library(fpp2)

# Exercise 1
autoplot(gold)
autoplot(woolyrnq)
autoplot(gas)

frequency(gold)
frequency(woolyrnq)
frequency(gas)

which.max(gold)


# Exercise 2
tute1 <- read.csv("tute1.csv")

mytimeseries <- ts(tute1[,-1], start = 1981, frequency = 4)

autoplot(mytimeseries, facets = T)

# Exercise 3
retaildata <- readxl::read_excel("retail.xlsx", skip = 1)
retaildata

myts <- ts(retaildata[,"A3349873A"], frequency = 12, start = c(1982, 4))
myts

# Exercise 4
data(bicoal)

autoplot(bicoal)
autoplot(chicken)
autoplot(dole)
autoplot(usdeaths)
autoplot(lynx)
autoplot(goog)
autoplot(fancy)
autoplot(a10)
autoplot(h02)

help(h02)
help(bicoal)
help(dole)
help(usdeaths)
help(goog)

autoplot(goog) +
   xlab("Trading Day")+
   ggtitle("Google Stock Price")

# Exercise 5
help(writing)
writing

ggseasonplot(writing)
ggsubseriesplot(writing)

# Exercise 6
help(hsales)
autoplot(hsales)
ggseasonplot(hsales)
ggsubseriesplot(hsales)

help(usdeaths)
autoplot(usdeaths)
# US accidental deaths peak in summer
ggseasonplot(usdeaths)
ggsubseriesplot(usdeaths)

help(bricksq)
autoplot(bricksq)
ggseasonplot(bricksq)
ggsubseriesplot(bricksq)
?ggsubseriesplot

# Exercise 7
help(arrivals)

autoplot(arrivals, facets = T)
ggseasonplot(arrivals[,3])


# Exercise 8
   # 1: B
   # 2: A
   # 3: D
   # 4: C

# Exercise 9
help(pigs)

mypigs <- window(pigs, start = 1990)
mypigs
frequency(pigs)

autoplot(mypigs)
ggseasonplot(mypigs)
ggsubseriesplot(mypigs)
ggAcf(mypigs)
ggPacf(mypigs)

# Exercise 10
help(dj)

autoplot(dj)
ggAcf(dj)

ddj <- diff(dj)
autoplot(ddj)
ggAcf(ddj)
