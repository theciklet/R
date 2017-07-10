#Create data frame with your own column

Country = c("Turkey", "Greece", "Spain", "Denmark", "Russia")
GDP = c(793000, 193000, 1232000, 304000, 1560000)

GDPbyCountry = data.frame(Country,GDP)

#Add another column into existing data frame

GDPbyCountry$Population = c(80, 10, 46, 5, 143)

#combine two data frames

Country = c("Australia", "Brazil")
GDP = c(400000, 1200000)
Population = c(40, 100) 

newGDPbyCountry = data.frame(Country, GDP, Population)
allcountry = rbind(GDPbyCountry, newGDPbyCountry)

#Create a subset of dataset

turkey = subset(allcountry, Country == "Turkey")
#see structure of dataset
str(turkey)

#how to export created dataset into local machine

write.csv(turkey, "turkey.csv")

#see what variables currently we have in R 
ls()

#remove dataset from R environment

rm(turkey)

#avarage, standard deviation, and summary(min., max., median, 1stQ, 3rdQ) of column that includes values

mean(who$Under15)
sd(who$Under15)
summary(who$Under15)

#which function gives us row number of summary such which.min, which.max etc.

which.min(who$Under15)
who$Country[which.min(who$Under15)] # gives country name in this particular row

#create a scatterplot with plot(x,y)

plot(who$GNI, who$FertilityRate)

#outliers

Outliers = data.frame(who[who$GNI > 10000 & who$FertilityRate > 2.5, ] )
nrow(Outliers)

Outliers[c("Country", "GNI", "FertilityRate")] # see which countries are

#exercises
who$Country[which.max(who$LiteracyRate)]

#histogram
hist(who$CellularSubscribers) 

#boxplot
boxplot(who$LifeExpectancy~who$Region, xlab = "", ylab = "Life Expectancy", main = "Life Expectancy by Region")

#see summary output for region, it gives us count of categories

table(who$Region)

#get average of column each category 

tapply(who$Over60, who$Region, mean)
tapply(who$LiteracyRate, who$Region, min, na.rm = TRUE) #removing null values

tapply(who$ChildMortality, who$Region, mean)


