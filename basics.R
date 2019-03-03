library(DAAG)
setwd("C:/Users/Owner/Desktop/RCourse") #My personal path.

#1.
mySum = sqrt(67) + sqrt(95) 
#2.
isDivided = FALSE # A boolean flag.
if(!(14576%%7)) #In case 14576 is divisible by 7, the result will be 0.
{
  isDivided = TRUE
}
#3.
first = 36*72
second = 44+1769
third = first*second
#4.
roundedNum = round(.04678, digits = 3)
#5.
vec <- c(2.5,98.4,12.9,54.2)
manualMean = sum(vec)/length(vec)
autoMean = mean(vec)
#6.
myVec = c(1.5,6,8,4.3)
mySd = sd(myVec)
#7.
print(3 > 2)
print(3 > 2 || 2 > 3)
print(2 > 3)
print(3 > 2 && 2 > 3)
#8.
print(paste(c("We", "love", "learning", "R"), collapse = " "))
#9.
mySeq = 55:64
print(paste(mySeq[length(mySeq)] -1, mySeq[length(mySeq)]), sep = " ")
#10.
filteredA <- A[-c(6, 21)] #Where A is a given vector.
#11.
x <- 1:50
y <- seq(1, 100, by = 2)
z <- x*y
m <- seq(5,17, length.out = 10)
#12
people <- c("Alex","Lilly","Mark", "Oliver", "Martha", "Lucas", "Caroline" )
Age <- c(25, 31, 23, 52, 76, 49, 26)
Height <- c(177, 163, 190, 179, 163, 183, 164)
Weight <- c(57, 69, 83, 75 ,70, 83, 53)
Sex <- c("F", "F", "M", "M", "F", "M", "F")
data1 <- data.frame(Age, Height, Weight, Sex)
row.names(data1) <- people
#13.
Working <- c("Yes", "No", "No", "Yes", "Yes", "No", "Yes")
data2 <- data.frame(Working)
row.names(data2) <- people
#14.
data3 <- cbind(data1, data2)
dim(data3)
sapply(data3, class)
#15.
class(state.center)
state.center.df <- as.data.frame(state.center)
#16.
dim(rainforest)
colnames(rainforest)
sum(is.na(rainforest$rootsk))
rainforest <- cbind(rainforest, rainforest$dbh*5)
colnames(rainforest)[colnames(rainforest) == 'rainforest$dbh * 5'] <- "New column" #Change the new column name.
write.csv(rainforest, file = "rainforest.csv")
