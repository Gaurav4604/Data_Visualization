library(ggplot2)
data(mpg)

head(mpg)

hist(mpg$displ, main = "MPG histogram", xlab = "Displacement")

plot(cyl ~ displ, data = mpg)

boxplot(mpg$cty, main = "City Mileage Boxplot", ylab = "City Mileage")

ggplot(data = mpg) + geom_histogram(aes(x = hwy))

ggplot(data = mpg) + geom_density(aes(x = displ), fill = "#51ff0065")

g <- ggplot(mpg, aes(x = displ, y = hwy))

g + geom_point()

g + geom_point(aes(color = cyl))

g + geom_point(aes(color = cyl)) + facet_wrap(~cyl)

g + geom_point(aes(color = cyl)) + facet_grid(class~year)

ggplot(mpg, aes(y = displ, x = 1)) + geom_boxplot()

ggplot(mpg, aes(y = displ, x = class)) + geom_boxplot()

ggplot(mpg, aes(y = displ, x = class)) + geom_violin()

ggplot(mpg, aes(y = displ, x = class)) + geom_violin() + geom_boxplot()

ggplot(mpg, aes(y = displ, x = class)) + geom_boxplot() + geom_violin()

ggplot(mpg, aes(x = cyl, y = displ)) + geom_line()

ggplot(mpg, aes(x = displ)) + geom_histogram() + facet_wrap(~class)
