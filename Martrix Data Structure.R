#####################Matrix
#Creating Matrix 
A = matrix(1:9,nrow = 3,ncol = 3,byrow = TRUE,
           dimnames =list(c('a','b','c'),c('d','e','f')))
print(A)
colnames(A)
rownames(A)
# Naming rows
rownames(A)<-c("ax", "bx", "cx")
# Naming column
colnames(A)<-c('dy','ey','fy')
A
#Creating constant filled matrices
# Matrix having 3 rows and 3 columns # filled by a single constant 7
print(matrix(7, 3, 3))
#Diagonal matrix:
print(diag(c(5,2,3),3,3))
#Identity matrix:
print(diag(1, 5, 5))
#Matrix metrics
dim(A)#dimension of matrix A
nrow(A)# number of row in matrix A
ncol(A)# number of column in matrix A
length(A) # total no of element in matrix A
prod(dim(A))
#Accessing elements of a Matrix
A[1,] # [row,column]
cat("Accessing first and second column\n")
print(A[c(3,1), c(1,3)])
A[-1,-3]
