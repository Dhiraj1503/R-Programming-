#1.Write a program to create a sequence of numbers from 20 to 50
 #and find the mean of numbers ,from 20 to 60 and sum of numbers from 51 to 91.
v1<-20:50
v1
?mean
x<-c(20:60)
x
xm<-mean(x)
xm
?sum
y<-c(51:91)
y
sum(y)

# 2. Write a program to extract first 10 english letter in lower case and last 10 letters in upper case and extract letters between 22nd to 24th letters in upper case

# Note: Use built-in datasets letters and LETTERS.
print("First 10 letters in lower case")
t<-head(letters,10)
t
print("Lasr 10 letters in upper case")
t<-tail(LETTERS,10)
t
tail(LETTERS[22:24])

#3.Write a program to create three vectors a,b,c with 3 integers. Combine the three vectors to become a 3×3 matrix where each column represents a vector. Print the content of the matrix
a<-c(1,2,3)
b<-c(4,5,6)
c<-c(7,8,9)
m<-cbind(a,b,c)
m

# 4.Write a program to find the maximum and the minimum value of a given vector
x <- c(10, 20, 30, 20, 20, 25, 9, 26)
?max
max(x,na.rm=FALSE)
min(x,na.rm=FALSE)
