getwd()
df <- read.csv('price_collection_11.csv', header = TRUE)
str(df)

# Make summary statistics (mean, median, variance, standard deviation). 
#Do you think 	these statistics are representative of the population? Why? Why no?

mean(df$price_beer)
mean(df$price_dreher)
median(df$price_beer)
median(df$price_dreher)
var(df$price_beer)
var(df$price_dreher)
sd(df$price_beer)
sd(df$price_dreher)

ggplot(df, aes(x = price_beer)) + geom_histogram()
ggplot(df, aes(x = price_dreher)) + geom_histogram()
hist(df$price_beer, breaks= 4, xlab = "Beer prices - cheapest in store")
hist(df$price_beer, breaks= 5, xlab = "Beer prices - cheapest in store")
hist(df$price_beer, breaks= 10, xlab = "Beer prices - cheapest in store")
hist(df$price_dreher, breaks= 4, xlab = "Dreher prices")
hist(df$price_dreher, breaks= 5, xlab = "Dreher prices")
hist(df$price_dreher, breaks= 10, xlab = "Dreher prices")

boxplot(df$price_beer, df$price_dreher, names = c('Cheapest beer price', 'Dreher price'))
        
