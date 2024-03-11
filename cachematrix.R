## Put comments here that give an overall description of what your
## functions do
## solution to r programming week 3

## Write a short comment describing this function
## this function creates a matrix to cache its inverse

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL                             
    set <- function(y) {                    
        x <<- y                            
        inv <<- NULL                       
    }
    get <- function() x                    

    setinverse <- function(inverse) inv <<- inverse 
    getinverse <- function() inv                     
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  
}


## Write a short comment describing this function
## this function will compute the inverse of the special matrix

cacheSolve <- function(x, ...) {
         inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}
