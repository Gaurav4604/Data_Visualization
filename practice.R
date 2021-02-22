library(ggplot2)

data(diamonds)

head(diamonds)

hist(diamonds$carat, main = "Carat Histogram", xlab = "Carat")
# frequency histogram of level ofcCarat

plot(price ~ carat, data = diamonds)
# scatter plot between [price (y)] , [carat (x)]

boxplot(diamonds$carat, main = "Carat Histogram", ylab = "Carat")
# frequency boxplot of level of carat represented by y-axis

# using ggplot
ggplot(data = diamonds) + geom_histogram(aes(x = carat))
# geom_histogram where x-axis is carat data
# from diamonds dataset, and y axis is frequency

ggplot(data = diamonds) + geom_density(aes(x = carat), fill = "grey50")

g <- ggplot(diamonds)
# point graph
g + geom_point(aes(x = carat, y = price))
# point graph with color
g + geom_point(aes(x = carat, y = price, color = color))
# point graph with individual analysis
g + geom_point(aes(x = carat, y = price, color = color)) + facet_wrap(~color)
# point graph with level wise analysis via cut and clarity parameters
g + geom_point(aes(x = carat, y = price, color = color)) + facet_grid(cut~clarity)
# box plot
ggplot(diamonds, aes(y = carat, x = 1)) + geom_boxplot()
# box plot with multiple x parameters
ggplot(diamonds, aes(y = carat, x = cut)) + geom_boxplot()
# violin plot with multiple x parameters
ggplot(diamonds, aes(y = carat, x = cut)) + geom_violin()

# positioning of layers using the different plots
ggplot(diamonds, aes(y = carat, x = cut)) + geom_violin() + geom_point()

ggplot(diamonds, aes(y = carat, x = cut)) + geom_point() + geom_violin()

# ggplot line graphs
ggplot(economics, aes(x = date, y = pop)) + geom_line()