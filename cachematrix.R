## This program will help us to create an environment were we will be able to cache the inverse of a matrix 
## by using two levels.
## first level control the operation made (inverse the matrix) and the second one who carry out the work 

## makeCacheMatrix is the first level of the environment where we re going to create th matrix and cache the inverse 

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
}
}

## The function cacheSolve is the second level who calculate the inverse of the matrix that has been manipulated in the first function

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if (!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}
