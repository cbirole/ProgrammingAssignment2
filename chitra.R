## Put comments here that give an overall description of what your
## functions do
#cahceMatrix <- By Chitra
## Comments to explain what function exactly does
## Short comments describing function
## <<- operator is used to asign value to an object that is different from environment
#take the matrix as input

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invMatrix <- NULL  # value setting to the matrix
        setMatrix <- function(y){          # value setting to the matrix
                 x <<- y   # x is from different environment
                invMatrix <- NULL
                }
        getMatrix <- function() x   #getting value of matrix
        setInverse <- function(inverse) invMatrix <<- inverse # setting value of inverse matrix
        getInverse <- function() invMatrix  #getting the value of inverse matrix
        list(setMatrix=setMatrix, getMatrix=getMatrix, setInverse=setInverse, getInverse=getInverse)
        

}
# New function of checking inverse from makeCacheMatrix(matrix). If inverse has no value= original data, if some value in inverse = message  "Getting Cached Invertible Matrix" 

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        invMatrix <- x$getInverse() #getting value of invertible matrix from makeCacheMatrix function
        if(!is.null(invMatrix)) {    #if inverse matrix is not NULL
                message("Getting Cached Invertible Matrix") 
                return(invMatrix)  ## Return a matrix that is the inverse of 'x'
                }
        #if value of the invertible matrix is NULL
        MatrixData <- x$getMatrix()                     #get the original Matrix Data
        invMatrix <- solve(MatrixData, ...)             # solve function to inverse the matrix
        x$setInverse(invMatrix)                         #set the invertible matrix 
        return(invMatrix)  ##Returning the matrix that is inverse of x
        
        
}
