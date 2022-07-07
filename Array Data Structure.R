## DAte 05/07/2022
#### Creating ann array
a.vec<-c(1:9)
a.vec # vector
arr.1d<-array(a.vec)
arr.1d # array
is.array(arr.1d)
is.vector(arr.1d) 

## Multidimensional Array 
arr<-array(2:5,dim=c(5,3,2))
print(arr)

### Accessing  the 3D array
#arr[row,Col,matrix]
arr[c(1:3),c(1:2),c(1)]

### Create a array from constants 
print(array(LETTERS,dim=c(3,3,2,2)))

### Naming of Arrays
row_names <- c("row1", "row2")  
col_names <- c("col1", "col2", "col3")
mat_names <- c("Mat1", "Mat2")
arr = array(2:14, dim = c(2, 3, 2),dimnames = list(row_names,col_names, mat_names))
print (arr)
# the naming of the various elements
# is specified in a list and
# fed to the function

## Accessing the array using label names
arr = array(2:14, dim = c(2, 3, 2),dimnames = list(row_names,col_names, mat_names))
print (arr)
arr["row1","col2","Mat1"]
arr[,"col2","Mat1"]
arr[,,"Mat1"]
### Accesing the array label using numeric index
arr[c(-1),c(1:2),1:2]
### Access the array using label numeric and label index 
arr[c(-1),c(1:3),c("Mat1","Mat2")]
arr['row1',]


## Subset to Matrix from array
mat1.from.array<-arr[,,1]
mat1.from.array
class(mat1.from.array)
is.matrix(mat1.from.array)

## Calculations Across Array Elements
# apply function 
# Create two vectors of different lengths.
vector1 <- c(20:23)
vector1
vector2 <- c(10,11,12,13,14,15)
vector2
# Take these vectors as input to the array.
new.array <- array(c(vector1,vector2),dim = c(3,3,2))
print(new.array)
# USe apply to calculate sum across rows
result <- apply(new.array,c(1),sum)
print(result)
## sum across column
result1<- apply(new.array,c(2),sum)
print(result1)
## sum across both
result2 <- apply(new.array,c(1,2),sum)
print(result2)

