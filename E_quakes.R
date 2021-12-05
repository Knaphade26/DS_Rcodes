datasets::quakes
# Download the data set
e_quakes<-datasets::quakes
head(e_quakes,10)
tail(e_quakes,10)
e_quakes[,c(1,2)]
df1<-e_quakes[,-6]
summary(e_quakes[,1])
e_quakes$depth
summary(e_quakes$depth)

summary(e_quakes)

plot(e_quakes$depth)
plot(e_quakes$depth,e_quakes$lat,type="l")
plot(e_quakes)
plot(e_quakes$depth, type= "l") # p: points, l: lines,b: both
plot(e_quakes$depth, xlab = 'Depth earthquake', 
     ylab = 'No of Instances', main = 'NY city',
     col = 'red')

# Horizontal bar plot
barplot(e_quakes$depth, main = 'depth of earthquakes',
        ylab = 'earthquake levels', col= 'blue',horiz = F,axes=T)

#Histogram
hist(e_quakes$lat)

hist(e_quakes$lat, 
     main = 'lat',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(e_quakes$depth,main="Boxplot")

boxplot.stats(e_quakes$depth)$out



# Multiple box plots
boxplot(e_quakes[,1:4],main='Multiple')


#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(e_quakes$depth)
plot(e_quakes$depth, e_quakes$lat)
plot(e_quakes$depth, type= "l")
plot(e_quakes$depth, type= "l", col='blue')

barplot(e_quakes$depth, main = 'earthquake depth',
        xlab = 'depth levels', col='green',horiz = TRUE)

hist(e_quakes$lat)
boxplot(e_quakes$lat)
boxplot(e_quakes[,0:4], main='Multiple Box plots')


sd(e_quakes$depth,na.rm = T)

#Var
var(e_quakes$depth,na.rm = T)
install.packages("moments")

#skewness
skewness(e_quakes$depth)
kurtosis(e_quakes$depth)

skewness(e_quakes$mag)
kurtosis(e_quakes$mag)
