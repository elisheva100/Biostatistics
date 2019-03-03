
###############
#Mtcars dataset
###############
attach(mtcars)
#1
boxplot(mpg~carb,data=mtcars, main="Car Milage by carburetors ", 
        xlab="Number of carburetors", ylab="Miles Per Gallon", col = rainbow(6))
legend("topright", legend = as.character(c(1:4, 6, 8)), fill = rainbow(6) )
#2
plot(mtcars[1:5], main = "mtcars scatterplot matrix")
#3
mtcars$gear <- factor(mtcars$gear)
#4.a
colors.gears <- c("red", "blue", "green")[mtcars$gear] #Define colors acorrding to mtcars$gear values.
plot(disp~mpg, data = mtcars, main = "Displacement vs car mileage",
     xlab = "Miles Per Gallon", ylab = "Displacement",
     col = colors.gears, pch = 18, cex = 1.5)
legend("topright", title = "Number of gears", legend = levels(mtcars$gear),
       fill = c("red", "blue", "green"), cex = 0.75)
abline(lm(disp~mpg, data = mtcars)) #Add regression line.
legend("bottomleft", legend = paste0("R-squared = ", format(summary(lm(disp~mpg, data = mtcars))$r.squared, digits = 3)), cex = 0.75) #Add R2.
#4.b
plot(disp~drat, data = mtcars, main = "Displacement vs rear axle ratio",
     xlab = "Rear axle ratio" , ylab = "Displacement",
     col = colors.gears, pch = '*', cex = 1.5)
legend("topright", title = "Number of gears", legend = levels(mtcars$gear), fill = c("red", "blue", "green"))
abline(lm(disp~drat, data = mtcars))
legend("bottomleft", legend = paste0("R-squared = ", format(summary(lm(disp~drat, data = mtcars))$r.squared, digits = 3)), cex = 0.75)
#5
"Answer: Not exactly, in the second graph (4.b), I expected a lower value."
#6
hist(mtcars$mpg, xlim = c(1,35), col = "red", density = 10, main = "Histograms of mtcars variables",  xlab = "")
hist(mtcars$qsec, xlim = c(1,35), col = "blue", density = 10, add = TRUE)
hist(mtcars$carb, xlim = c(1,35), col = "green", density = 10, add = TRUE)
legend("topright", legend = c("Miles/gallon", "1/4 mile time", "# of carburetors"),
       fill = c("red", "blue", "green"), cex = 0.75)

##############
#Trees dataset
##############
attach(trees)
#1.
mytable <- table(trees$Height, trees$Volume)
#2
margin.table(mytable, 1) # Height frequencies (summed over Volume)
#3
margin.table(mytable, 2) # Volume frequencies (summed over Height)
#4
table(trees$Girth, trees$Height, trees$Volume)
#5
a <- c(70, 65, 63, 72, 80, 83, 66, 75, 80, 75, 79, 76, 76, 69, 75, 74, 85, 8, 71, 63, 78, 80, 74,
    72, 77, 81, 82, 80, 86, 80, 87)
trees <- cbind(trees, a)
#6
mytable_2 <- table(trees$Height, trees$a)
#7
View(mytable) #Observe the content.
View(mytable_2)
#Thes are 2 different matrices - their columns are different and therefore they have different values.
#8.a
print(summary(mytable))
#8.b
print(summary(mytable_2))
#9
# The chi square test for independence, indicates wether there a statistical dependence between the groups
# For the Heigth and volume comparison the p-value (obtaind by the Chi-squared test) > 0.05 and therfore, there is no significant relationship between the groups.
#While for the comparison between the Height and a, p-value < 0.05, and therefore there is a significant relationship between them.
