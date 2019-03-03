############################
#Assignment 3
#Elisheva Heilbrun 208833012
############################
#1
X <- 20 #random KG value.
if(X >= 4 && X <= 5)
{
  dose <- 2
} else if (X >= 6 && X <= 7)
{
  dose <- 3.5
}else if(X >= 8 && X <= 10)
{
  dose <- 5
} else if(X >=11 && X <= 13)
{
  dose <- 7
}
#2
myvector <- c(1,2,3)
if(all(diff(myvector) <= 0)) #compute the differences between elements.
{
  print("The elements are in ascending order")
} else 
{
  print("The elements are not in ascending order")
}
#3
a <- 1
for(i in 1:20)
{
  a <- a*i
}
#Using prod function for comparison.
if((prod(1:20)) == a)
{
  print("you got the correct result")
}
#Usinf factorial function for comparison.
if((factorial(20)) == a)
{
  print("you got the correct result")
}
#4
