## Factor 
## Creation of Factor
```{r}
# Create a vector.
apple_colors <- c('green','green','yellow','red','red','red','green') 
#character vector
# find the unique element in vector
unique(apple_colors)
# find duplicate elements in vector
dup.log.vec<-duplicated(apple_colors)
factor.apple<-factor(apple_colors)
factor.apple
is.factor(factor.apple)
# order Fcator
z <- factor(LETTERS[3:1], ordered = TRUE)
z
is.ordered(z)
order(z)
# level of factor object 
levels(z)
levels(factor.apple)
# Exclude 
x <- factor(c(1,2,NA,NA,3,5,5,2,2,1,1,1),exclude = NA)
x
levels(x)
nlevels(x)
#nmax
x<-factor(c(1,2,NA,NA,3,5,5,2,2,1,1,1),exclude = NA,nmax=5)
x
```
### Modification Of a Factor in R
```{r}
# Modification of Factor
apple_colors <- c('green','green','yellow','red','red','red','green')
factor_apple<-factor(apple_colors)
factor_apple[4]<-"green"
factor_apple
# Add new level
levels(factor_apple)<-c(levels(factor_apple),"white")
levels(factor_apple)
factor_apple[3]<-"white"
factor_apple
```
## Lab Exsersise
1.Write a R program to create an array with three columns, three rows, and two "tables", taking two vectors as input to the array. Print the array.

```{r}
v1<-c(1:3)
v2<-c(4:6)
arr<-array(c(v1,v2),dim=c(3,3,2))
print(arr)
```
2.Write a R program to create a 5 × 4 matrix , 3 × 3 matrix with labels and fill the matrix by rows and 2 × 2 matrix with labels and fill the matrix by columns
```{r}
Mat<-matrix(c(1:20),5,4)
Mat
cells<-c(1,3,5,7,8,9,11,12,14)
rnames<-c("Row1","Row2","Row3")
cnames<-c("Col1","Col2","Col3")
Mat2<-matrix(cells,3,3,byrow=TRUE,dimnames=list(rnames,cnames))
Mat2
rlebals<-c("Row1","Row2")
clebals<-c("Col1","Col2")
Mat3<-matrix(cells,2,2,byrow=FALSE,dimnames=list(rlebals,clebals))
Mat3
```

3.Imagine that you are working for the Ghostbusters, and for safety reasons you are recording the height and weight for everyone or everything the team encounters. So far you have collected information about the following. entities: Dr Peter Venkman, Dr Raymond Stantz, Dr. Eagon Spengler, Dana Barrett, Vigo, Slimer, and the Marshmallow Man.
# Create the following two vectors:
# A vector called weight, storing the values: 71, 67, 83, 67
# A vector called height, storing the values: 1.75, 1.81, 1.78, 1.82, 1.97, 2.12, 2.75
# You need to calculate the BMI for all you have data for. BMI is calculated by dividing the weight in kg by the height in meters squared.
# Carry out the operation and save the result in a variable called bmi.  
# What is your output?
# Try printing your bmi variable.
# Can you explain how you got the last three values, given that your weight variable only had 4 elements?
```{r}
weight<-c(71,67,83,67)
height<-c(1.75,7.81,1.78,1.82,1.97,2.12,2.75)
BMI<-weight/(height**2)
BMI
```

