## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
   inverse <- NULL
  set <- function(m) {
   x <<- m
   inverse <<- NULL
}
     get <- function() {
       x
}
    
    setInverse <- function (i) {
    inverse <<- i
      }
  getInverse <- function () {
   inverse
}
    list(set = set,
           get = get,
          setInverse = setInverse,
          getInverse = getInverse)
  }
  
  
  ## Write a short comment describing this function
  ## This function computes the inverse of the special matrix returned
  ##  by `makeCacheMatrix` above. If the inverse has already been calculated 
## (and the matrix has not changed), then `cacheSolve` should retrieve the inverse from the cache.
    
    cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
       invx <-x$getInverse ()
        
         if(!is.null(invx)) {
              message("getting cached data")
              return(invx)
            }
        data <- x$get()
        invx <- solve(data, ...)
        x$setInverse(invx)
        invx
    }

