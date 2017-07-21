## Put comments here that give an overall description of what your
## functions do 

## This function will accept a matrix and stores the same in cache and provides additional methods to retreive the same

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL  set <- function(y) {    
        x <<- y    inv <<- NULL  }  
        get <- function() x  
        setinverse <- function(inverse) inv <<- inverse  
        getinverse <- function() inv  
       list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## function accepts a martix as a input and returns the inverse of the same, if the inverse is already available in cache it will return from cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          inv <- x$getinverse()  
        if(!is.null(inv)) {    
                message("getting cached data")    
                return(inv)  
        }  
        data <- x$get()  
        inv <- solve(data)  
        x$setinverse(inv)  
        inv
}
