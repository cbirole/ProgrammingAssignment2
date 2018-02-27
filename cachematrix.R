## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#this function cache the inverse of a Matrix
#1. Set the value of vector
#2. Get the value of vector
#3. Set the value of inverse of matrix
#4. Get the value of inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL   
  set <- function(y) { #2
    x <<- y
    inv <<- NULL
    
  }
  get <- function() x #1
  setinverse <- function(inverse) inv <<- inverse #3
  getinverse <- function() inv #4
  list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)
}

#This function returns the inverse of matrix,
#it checks if the inverse has already been returned first. If so, it gets the result.
#if not, it retrieve the matrix from cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse{ 
    if(!is.null(inv)){
      message('getting cached data')
      return (inv)
    } 
    data <- x$get() 
    inv <- solve(data) 
    x$setinverse(inv) 
    inv 
  } 
  
}
